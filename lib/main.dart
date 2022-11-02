import 'package:flutter/material.dart';
import 'package:untitled1/routes.dart';
import 'package:untitled1/screens/splash/splash_screen.dart';
import 'package:untitled1/screens/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,

    );
  }
}
