import 'package:flutter/material.dart';
import 'package:secure_ride_home/widgets/phone_number_phone.dart';

class PhoneLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhoneNumberForm(
              onSwitchToPhoneLoginPressed: () {
                // Xử lý chuyển đổi trở lại đăng nhập bằng username và password
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
