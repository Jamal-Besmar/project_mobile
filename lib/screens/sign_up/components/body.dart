import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/screens/sign_up/components/sign_up_form.dart';
import 'package:untitled1/size_config.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child:SizedBox(
         width: double.infinity,
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)),
           child: SingleChildScrollView(
             child: Column(
               children: [
                 SizedBox(height: SizeConfig.screenHeight* 0.04,),
                 Text("Registar Account ",style:headingStyle,),
                 Text("Complete youe details or continue",textAlign: TextAlign.center,),
                 SizedBox(height: SizeConfig.screenHeight * 0.08,),
                 SignUpForm(),


               ],
             ),
           ),
         ),
       )
   );
  }

}