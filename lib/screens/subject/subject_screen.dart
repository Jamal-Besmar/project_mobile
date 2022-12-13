import 'package:flutter/material.dart';
import 'package:untitled1/screens/subject/components/subject_content.dart';

import '../../components/menu_bar.dart';
import '../../components/side_menu.dart';


class SubjectScreen extends StatelessWidget{
  static String routename= "/subject";

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar:  CustomeBar(backgroundColor: Colors.transparent,title: "Subjects"),
      drawer: SideMenu(),
      body: SubjectContecnt(),
    );


  }
}