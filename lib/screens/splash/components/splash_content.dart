import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/size_config.dart';

class SplashContent extends StatelessWidget {
  final String text ,image ;
   SplashContent(
    this.text,
    this.image,
    );


  @override
  Widget build (BuildContext context){
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'Audio Lectures',
          style: TextStyle(
            fontSize: getProportionScreenWidth(36),
            color: KPrimaryColor,
            fontWeight: FontWeight.bold,
          ),

        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height:getProportionScreenHeight(265) ,
          width:getProportionScreenWidth(235) ,
        )
      ],
    ) ;
  }
}
