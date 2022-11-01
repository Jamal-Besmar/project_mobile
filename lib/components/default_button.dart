import 'package:flutter/material.dart';
import 'package:untitled1/size_config.dart';

class DefaultButton extends StatelessWidget{
  final String text;
  final Function press ;
  DefaultButton(this.text,this.press);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(56),
      child:TextButton(onPressed: press(),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionScreenWidth(18),
            color: Colors.white,
          ),
        ),



      ),
    );
  }

}