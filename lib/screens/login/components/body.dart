import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/screens/login/components/sign_form.dart';
import 'package:untitled1/size_config.dart';

class Body extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return
      SafeArea(


        child: SizedBox(

          width: double.infinity,

          child: Padding(

            padding: EdgeInsets.symmetric(horizontal: getProportionScreenHeight(20)),
            child: Column(

              children: [
                SizedBox(

                    height: SizeConfig.screenHeight * 0.001),
                  Image.asset("assets/images/login.png",width: 200,),
                  Text("Welcome Back ",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: getProportionScreenWidth(20),
                        fontWeight: FontWeight.bold,
                      ) ,


                ),



                Text("Sing in with your phone number and password",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                SignForm(),

              ],
            ),
          ),
        ),

    );

  }

}