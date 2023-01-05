import 'package:flutter/material.dart';
import 'package:untitled1/screens/video/video_list_screen.dart';

import '../../../model/subject_data.dart';
import '../../Audio/audio_list_screen.dart';

class SubjectContecnt extends StatelessWidget {
  const SubjectContecnt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: subject.length,
      itemBuilder: (context,index){
        return Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              onTap: (){

                Navigator.pushNamed(context, AudioListScreen.routename);},
              leading: Image.asset(subject[index].imageUrl),
              title: Text(subject[index].subject),

            ),
          ),
        );
      },
    );
  }


}

