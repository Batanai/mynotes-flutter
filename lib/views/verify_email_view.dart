import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

import 'package:mynotes/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify Email')),
      body: Column(
        children: [
          const Text('Please verify your email address'),
          TextButton(
              onPressed: () async {
                final user = AuthService.firebase().currentUser;
                user?.isEmailVerified;
              },
              child: const Text('Send email verification'))
        ],
      ),
    );
  }
}
