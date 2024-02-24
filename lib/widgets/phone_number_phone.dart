import 'package:flutter/material.dart';

class PhoneNumberForm extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();
  final VoidCallback onSwitchToPhoneLoginPressed;

  PhoneNumberForm({required this.onSwitchToPhoneLoginPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: phoneNumberController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(labelText: 'Phone Number'),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: onSwitchToPhoneLoginPressed,
          child: Text('Send OTP'),
        ),
      ],
    );
  }
}
