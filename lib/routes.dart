import 'package:flutter/material.dart';
import 'package:untitled1/screens/Audio/audio_list_screen.dart';
import 'package:untitled1/screens/Audio/audio_main_screen.dart';
import 'package:untitled1/screens/login/sign_in_screen.dart';
import 'package:untitled1/screens/main/main_screen.dart';
import 'package:untitled1/screens/splash/splash_screen.dart';
import 'package:untitled1/screens/subject/subject_screen.dart';
import 'package:untitled1/screens/video/video_list_screen.dart';
import 'package:untitled1/screens/video/video_main_screen.dart';

final Map<String ,WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  SignInScreen.routename : (context) => SignInScreen(),
  MainScreen.routename:(context) =>MainScreen(),
  VideoMainScreen.routename:(context)=>VideoMainScreen(),
  AudioMainScreen.routename:(context)=>AudioMainScreen(),
  SubjectScreen.routename:(context)=>SubjectScreen(),
  AudioListScreen.routename:(context)=>AudioListScreen(),
  VideoListScreen.routename:(context)=>VideoListScreen(),



};