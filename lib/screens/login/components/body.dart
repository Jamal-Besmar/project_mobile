import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/screens/login/components/sign_form.dart';
import 'package:untitled1/size_config.dart';

class Body extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
       ),
      margin: EdgeInsets.zero,

      child:
      SafeArea(

        child: SizedBox(

          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionScreenHeight(20)),
            child: Column(
              children: [
                SizedBox( height: SizeConfig.screenHeight * 0.04),
                Text("Welcome Back ",
                  style:TextStyle(
                    color: KPrimaryLightColor,
                    fontSize: getProportionScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ) ,
                ),
                Text("Sing in with your phone number and password",
                  style: TextStyle(
                    color: KPrimaryLightColor,
                  ),
                  textAlign: TextAlign.center
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.28),
                SignForm(),

              ],
            ),
          ),
        ),
      ),
    );
  }

}