import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../model/data.dart';


class CourseGrid extends StatelessWidget {
  const CourseGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: year.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(year[index].backImage), fit: BoxFit.contain),
            ),
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(

                        year[index].text,
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                      Text(
                        year[index].lessons,
                        style: const TextStyle(color: Colors.white,),

                      ),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(

                        year[index].imageUrl,
                        height: 100,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

