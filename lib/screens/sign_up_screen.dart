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
            RichText(
              text: const TextSpan(
                text: 'By continuing, you are agreeing to our Terms of \n',
                style: TextStyle(
                  fontSize: 14.0,
                  height: 1.5,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Service ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
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
