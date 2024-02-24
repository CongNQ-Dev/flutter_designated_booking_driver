import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:secure_ride_home/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'secure_ride_home',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(SecureRideHomeApplication());
}

class SecureRideHomeApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:,
    );
  }
}
