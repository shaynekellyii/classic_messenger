import 'package:classic_messenger/components/components.dart';
import 'package:classic_messenger/services/auth/auth_bloc.dart';
import 'package:classic_messenger/services/auth/auth_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(
        googleSignIn: GetIt.I.get<GoogleSignIn>(),
        firebaseAuth: GetIt.I.get<FirebaseAuth>(),
        firebaseFirestore: GetIt.I.get<FirebaseFirestore>(),
        prefs: GetIt.I.get<SharedPreferences>(),
      )..add(AuthCheckRequested()),
      child: const SplashView(),
    );
  }
}

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final length = MediaQuery.of(context).size.width / 3;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => switch (state) {
        AuthState.authenticated => context.go('/home'),
        AuthState.unauthenticated => context.go('/login'),
        _ => null,
      },
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: length,
            width: length,
            child: Image.asset(
              CmImages.icAvatarOnline,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
