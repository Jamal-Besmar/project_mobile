
import 'package:flutter/material.dart';
import '../../../model/questions_data.dart';
import '../../../size_config.dart';
import 'option1.dart';
import 'options.dart';

class KindaCodeDemo extends StatefulWidget {
  const KindaCodeDemo({Key? key}) : super(key: key);

  @override
  State<KindaCodeDemo> createState() => _KindaCodeDemoState();
}

class _KindaCodeDemoState extends State<KindaCodeDemo> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);
  bool isPressed=false;

  // the index of the current page

  Color test=Colors.white;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Container(
        width: getProportionScreenWidth(25),
        height: getProportionScreenHeight(600),
           child: Center(
            child: PageView.builder(
            controller: _pageController,
            itemCount: questions.length,
            pageSnapping: true,

              itemBuilder: (context, index) {
                return Container(
                child: Padding(
                padding: const EdgeInsets.symmetric(
                horizontal: 18.0, vertical: 12),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 60,),
                Text(
                'Question ${index + 1}',style: TextStyle(color: Colors.yellow[800]),),
                SizedBox(height: 15,),
                Text(questions[index].title,
                  style: TextStyle( fontSize: 20,),),
                SizedBox(height: 55,),
                 for(int i = 0 ; i < questions[index].option.length;i++)
                   OptionList(option: questions[index].option.keys.toList()[i],
                       status:questions[index].option.values.toList()[i],

                   ),
                    //OptionList(pageNum: index),

                    
                  ],
                ),
              ),
              );
                },
    ),
    ),
    ),
    ],
    ),
    );
  }
}
