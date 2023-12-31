import 'package:classic_messenger/components/components.dart';
import 'package:classic_messenger/services/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(
        googleSignIn: GetIt.I.get<GoogleSignIn>(),
        firebaseAuth: GetIt.I.get<FirebaseAuth>(),
        firebaseFirestore: GetIt.I.get<FirebaseFirestore>(),
        prefs: GetIt.I.get<SharedPreferences>(),
      ),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => switch (state) {
        AuthState.authenticated => context.go('/home'),
        _ => null,
      },
      child: const CmScaffold(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SignInHeader(),
                SizedBox(height: 20.0),
                Center(child: CmFramedAvatar()),
                SizedBox(height: 20.0),
                _LoginForm(),
                _LoginActions(),
                _LoginFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginFooter extends StatelessWidget {
  const _LoginFooter();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {},
      child: const Text(
        'Terms of use',
        style: TextStyle(color: Colors.grey, fontSize: 12.0),
      ),
    );
  }
}

class _SignInHeader extends StatelessWidget {
  const _SignInHeader();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sign in to',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Classic ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              TextSpan(
                text: 'Messenger',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _LoginActions extends StatelessWidget {
  const _LoginActions();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {},
          child: const Text('Can\'t sign in?'),
        ),
        const Row(
          children: [
            Text('Sign in as: '),
            CmStatusSelector(),
          ],
        ),
        Row(
          children: [
            CmButton(label: 'Sign in', onTap: () {}),
            const SizedBox(width: 10.0),
            CmButton(
              label: 'Sign in with Google',
              onTap: () =>
                  context.read<AuthBloc>().add(SignInWithGoogleRequested()),
              leading: Image.asset(CmImages.icGoogle),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Don\'t have a Classic Live ID?'),
            TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () {},
              child: const Text('Sign up'),
            ),
          ],
        ),
      ],
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'example555@hotmail.com',
          ),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Password',
          ),
        ),
      ],
    );
  }
}
