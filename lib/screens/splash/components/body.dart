import 'package:flutter/material.dart';
import 'package:untitled1/components/default_button.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/screens/splash/components/splash_content.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState() => _BodyState();
  
}
class _BodyState extends State{
int currentPage = 0;
List< Map <String,String >> splashData=[
  {
    "text" : "Welcome to Standard ,Let's APP",
    "image":"assest/images/s-1.jpg"
},
  {
  "text" : "Welcome to Standard ,Let's APP 2",
  "image":"assest/images/s-2.jpg"
},
  {
  "text" : "Welcome to Standard ,Let's APP 3",
  "image":"assest/images/s-3.jpg"
}];
@override
  Widget build(BuildContext context) {
  return SafeArea(child:SizedBox(
    width: double.infinity,
    child: Column(
      children:<Widget> [
        Expanded(
          flex:3,
          child: PageView.builder(
            onPageChanged: (value){
              setState(() {
                currentPage=value;
                });
              } ,
            itemCount: splashData.length,
            itemBuilder: ( context, index )=> SplashContent(
                text: splashData[index]["text"].toString(),
                image: splashData[index]["image"].toString(),
            ),
            ),
            ),
        Expanded(
            flex:2 ,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: List.generate(splashData.length,
                            (index) =>  buildDot (index:index)),
                  ),
                  Spacer(flex: 3),
                  DefaultButton(
                    text: "Go",
                    press: (){

                    },
                  ),
              Spacer(),
                ],
              ),
            ))
      ],
    ),
  )
  ) ;

}

  AnimatedContainer buildDot({ required int index}) {
  return AnimatedContainer(duration: KAnimationDuration,
    margin: EdgeInsets.only(right: 5),
    height: 6,
    width: currentPage ==  index ?  20 : 6,
    decoration: BoxDecoration(
    color: currentPage== index ? KPrimaryColor : Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
    ),
  );
  }
}