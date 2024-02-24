import 'package:flutter/material.dart';

class UsernamePasswordForm extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final VoidCallback onLoginPressed;

  UsernamePasswordForm({required this.onLoginPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: usernameController,
          decoration: InputDecoration(labelText: 'Username'),
        ),
        TextFormField(
          controller: passwordController,
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: onLoginPressed,
          child: Text('Login'),
        ),
      ],
    );
  }
}
