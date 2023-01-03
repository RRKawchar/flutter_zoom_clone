import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_clone/resources/auth_methods.dart';
import 'package:flutter_zoom_clone/widgets/custom_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AuthMethods _authmethod=AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Start or Join a meeting',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0),
            child: Image.asset("assets/images/onboarding.jpg"),
          ),
          CustomButton(text: "Google Sign In",onPressed: ()async{

            bool res=await _authmethod.signInWithGoogle(context);
            if(res){
             Navigator.pushNamed(context, '/home');
            }
          },)
        ],
      ),
    );
  }


}
