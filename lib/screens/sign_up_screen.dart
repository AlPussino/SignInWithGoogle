import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../google_sign_in_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignUpProvider>(context, listen: false);
                provider.googleLogin();
              },
              child: const Text(
                'Sign up with Google',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
