import 'package:flutter/material.dart';
import 'package:secure_ride_home/screens/phone_login_screen.dart';
import 'package:secure_ride_home/widgets/username_password_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UsernamePasswordForm(
              onLoginPressed: () {
                // Xử lý đăng nhập với username và password
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login with phone number?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhoneLoginScreen()),
                    );
                  },
                  child: Text('Switch'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
