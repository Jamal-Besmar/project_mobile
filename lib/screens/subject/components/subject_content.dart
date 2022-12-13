import 'package:flutter/material.dart';
import '../../../model/subject_data.dart';

class SubjectContecnt extends StatelessWidget{
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
              leading: Image.asset(subject[index].imageUrl),
              title: Text(subject[index].subject),

            ),
          ),
        );
      },
    );
  }


}