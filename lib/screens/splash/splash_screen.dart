import 'package:flutter/material.dart';
import 'package:untitled1/size_config.dart';

import 'components/body.dart';


class SplashScreen extends StatelessWidget{
  static String routeName="/spalsh";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
  
}