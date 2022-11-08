import 'package:flutter/material.dart';
import 'package:untitled1/screens/login/components/body.dart';

class SignInScreen extends StatelessWidget{
  static String routename= "/sign_in";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Sign in"),
     ),
     body: Body(),
   );
  }
}