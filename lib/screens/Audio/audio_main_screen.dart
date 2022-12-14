import 'package:flutter/material.dart';
import '../../components/menu_bar.dart';
import '../../components/side_menu.dart';
import '../../components/years_grid.dart';


class AudioMainScreen extends StatelessWidget{
  static String routename= "/audio";

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar:  CustomeBar(backgroundColor: Colors.transparent,title: "Audio"),
      drawer: SideMenu(),
      body: SingleChildScrollView(child:CourseGrid()),

    );
  }
}