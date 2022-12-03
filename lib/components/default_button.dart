import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/size_config.dart';

class DefaultButton extends StatelessWidget{

  const DefaultButton({super.key ,required this.text,required this.press});
  final String text;
  final void Function() press ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(56),
      child:TextButton(
      onPressed:press,
        style:
        TextButton.styleFrom(
          backgroundColor: KPrimaryColor,
            shape:StadiumBorder(),
        ),
        child:
        Text(text,
          style: TextStyle(
            color: KPrimaryLightColor,
            fontFamily: 'Muli',
            fontSize:20,
              fontWeight: FontWeight.w900,
        ),
        ),
        ) ,
      );


  }

}