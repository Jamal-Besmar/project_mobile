import 'package:flutter/material.dart';
import 'package:untitled1/size_config.dart';


const KPrimaryColor = Color(0xFF00ACC1);
const KPrimaryLightColor = Color(0xFFFFECDE);
const KPrimaryGradienColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF006064),Color(0xFF00B8D4)],
);
const KSecondaryColor=Color(0xFF84FFFF);
const KTextColor= Color(0xFF263238);
// Duration For Animation in APP
const KAnimationDuration=Duration(milliseconds: 200);



final headingStyle = TextStyle(
  fontSize: getProportionScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

