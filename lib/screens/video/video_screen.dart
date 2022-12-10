import 'package:flutter/material.dart';

import '../../components/menu_bar.dart';
import '../../components/side_menu.dart';
import '../../components/years_grid.dart';


class VideoScreen extends StatelessWidget{
  static String routename= "/video";

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar:  CustomeBar(backgroundColor: Colors.transparent,title: "Video"),
      drawer: SideMenu(),
      body: SingleChildScrollView(child:CourseGrid()),

    );
  }
}

