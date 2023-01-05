


import 'package:flutter/material.dart';






class OptionList extends StatelessWidget {
  const OptionList({super.key, required this.option, required this.status} );
  final String option ;
  final bool status;





  @override
  Widget build(BuildContext context) {

      return Card(
        elevation: 4,


        color: Colors.white,
        child: ListTile(
          onTap: () {


          },

          title: Text(option,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.check_circle_outline,),
          contentPadding: EdgeInsets.all(10),
        ),
      );

  }
}
