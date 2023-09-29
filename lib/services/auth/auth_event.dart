part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignInWithGoogleRequested extends AuthEvent {}

class AuthCheckRequested extends AuthEvent {}
