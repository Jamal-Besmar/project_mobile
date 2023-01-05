/*

import 'package:flutter/material.dart';

import '../../../model/questions_data.dart';

typedef void OptionSelectedCallback(String option);

class OptionList extends StatefulWidget{
  const OptionList({Key? key,  required this.option, required this.status}) : super(key: key);
  final String option ;
  final bool status;


  @override
  _OptionListState createState() => _OptionListState();

}

class _OptionListState extends State<OptionList> {

    late String option;
    late bool status;



      void initState() {
        super.initState();

        option=widget.option;
        status=widget.status;
        print("option here is $option");
        print("status here is $status");

      }



  @override
  Widget build(BuildContext context) {
    Color ? test;


    return Expanded(child: ListView.builder(
      itemCount: option.length,
      itemBuilder: (context,  index){
        return Card(

          margin: EdgeInsets.symmetric(vertical: 10),

          color: test,

          child: ListTile (
            onTap: (){


            },


            title: Text(option),
            trailing: Icon( Icons.check_circle_outline, ),


          )
        );
      },
    ),
    );
  }
}

*/