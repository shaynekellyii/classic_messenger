class CmConstants {
  // prefs
  static final prefKeyFirebaseUserId = 'firebase-user-id'.asPrefKey;

  // firestore
  static const firestoreUserCollection = 'users';
  static const firestoreIdField = 'id';
  static const firestoreCreatedAtField = 'createdAt';
  static const firestorePhotoUrlField = 'photoUrl';
  static const firestoreDisplayNameField = 'displayName';
  static const firestoreEmailField = 'email';
  static const firestoreStatusField = 'status';
}

extension _StringExt on String {
  String get asPrefKey => 'com.shaynek.classic_messenger-$this';
}
