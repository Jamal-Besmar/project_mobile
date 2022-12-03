
import 'package:flutter/material.dart';
import 'package:untitled1/screens/login/sign_in_screen.dart';
import 'package:untitled1/screens/splash/splash_screen.dart';

final Map<String ,WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  SignInScreen.routename : (context) => SignInScreen(),
};