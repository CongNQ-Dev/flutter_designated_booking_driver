import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'dart:developer';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _auth.authStateChanges().listen((event) {
      _user = event;
    });
  }

  void _handleGoogleSignIn() async {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();

      final UserCredential userCredential =
          await _auth.signInWithProvider(_googleAuthProvider);

      final User user = userCredential.user!;

      // Lấy id token

      final result = await user.getIdTokenResult();
      var fullToken = result.token.toString();
      print(result);
      // print(fullToken.substring(0, 500));
      // print(fullToken.substring(500, 1137));

      // String? providerId = userCredential.additionalUserInfo!.providerId;
      // print('Provider: $providerId');

      // final String? accessToken = await user.getIdToken();
      // // info user
      // final Map<String, dynamic> userInfoMap =
      //     userCredential.additionalUserInfo!.profile!;

      // print('User info: $userInfoMap');
    } catch (e) {
      print(e);
    }
  }

  // void _handleFacebookSignIn() async {
  //   try {
  //     FacebookAuthProvider _facebookAuthProvider = FacebookAuthProvider();

  //     final UserCredential userCredential =
  //         await _auth.signInWithCredential(_facebookAuthProvider);

  //     final User user = userCredential.user!;

  //     // Lấy id token

  //     final result = await user.getIdTokenResult();
  //     var fullToken = result.token.toString();
  //     print(result);
  //     // print(fullToken.substring(0, 500));
  //     // print(fullToken.substring(500, 1137));

  //     // String? providerId = userCredential.additionalUserInfo!.providerId;
  //     // print('Provider: $providerId');

  //     // final String? accessToken = await user.getIdToken();
  //     // // info user
  //     // final Map<String, dynamic> userInfoMap =
  //     //     userCredential.additionalUserInfo!.profile!;

  //     // print('User info: $userInfoMap');
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  Future<UserCredential> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final AccessToken? accessToken = loginResult.accessToken;
    if (accessToken != null) {
      final token = accessToken.token;
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(token);
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);

      final User user = userCredential.user!;
      final result = await user.getIdTokenResult();
      var fullToken = result.token.toString();

      print('Access token: $token');
      print('ID token: $fullToken');
    }
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  Widget _userInfo() {
    return ElevatedButton(
      onPressed: _auth.signOut,
      child: const Text('Sign out'),
    );
  }

  Widget _googleSignInButton() {
    return Center(
      child: SizedBox(
        height: 50,
        child: SignInButton(
          Buttons.google,
          text: 'Sign up with Google',
          onPressed: _handleGoogleSignIn,
        ),
      ),
    );
  }

  Widget _facebookSignInButton() {
    return Center(
      child: SizedBox(
        height: 50,
        child: SignInButton(Buttons.facebook,
            text: 'Sign up with Facebook', onPressed: signInWithFacebook),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: _user != null ? _userInfo() : _facebookSignInButton(),
    );
  }
}
