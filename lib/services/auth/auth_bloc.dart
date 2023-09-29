import 'package:classic_messenger/services/auth/auth_state.dart';
import 'package:classic_messenger/utilities/utilities.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.googleSignIn,
    required this.firebaseAuth,
    required this.firebaseFirestore,
    required this.prefs,
  }) : super(AuthState.uninitialized) {
    on<SignInWithGoogleRequested>(_signInWithGoogle);
    on<AuthCheckRequested>(_checkIfAuthenticated);
  }

  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final SharedPreferences prefs;

  String? get firebaseUserId =>
      prefs.getString(CmConstants.prefKeyFirebaseUserId);

  Future<void> _checkIfAuthenticated(AuthCheckRequested _, Emitter emit) async {
    final isAuthenticated = await googleSignIn.isSignedIn() &&
        prefs.getString(CmConstants.prefKeyFirebaseUserId)?.isNotEmpty == true;
    emit(isAuthenticated ? AuthState.authenticated : AuthState.unauthenticated);
  }

  Future<void> _signInWithGoogle(
    SignInWithGoogleRequested _,
    Emitter emit,
  ) async {
    emit(AuthState.loading);

    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final firebaseUser =
          (await firebaseAuth.signInWithCredential(credential)).user;
      if (firebaseUser != null) {
        final queryResult = await firebaseFirestore
            .collection(CmConstants.firestoreUserCollection)
            .where(CmConstants.firestoreIdField, isEqualTo: firebaseUser.uid)
            .get();
        final documents = queryResult.docs;
        if (documents.isEmpty) {
          firebaseFirestore
              .collection(CmConstants.firestoreUserCollection)
              .doc(firebaseUser.uid)
              .set({
            CmConstants.firestoreDisplayNameField: firebaseUser.displayName,
            CmConstants.firestorePhotoUrlField: firebaseUser.photoURL,
            CmConstants.firestoreEmailField: firebaseUser.email,
            CmConstants.firestoreIdField: firebaseUser.uid,
            CmConstants.firestoreCreatedAtField: DateTime.now(),
            CmConstants.firestoreStatusField: null,
          });
        }
      }
    }
    emit(AuthState.authenticated);
  }
}
