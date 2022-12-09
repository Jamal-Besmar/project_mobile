import 'package:flutter/material.dart';
import 'package:untitled1/components/side_menu.dart';
import '../../components/menu_bar.dart';



class MainScreen extends StatelessWidget{
  static String routename= "/main";

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar:  CustomeBar(backgroundColor: Colors.transparent,title: "Home"),
      drawer: SideMenu(),

    );
  }
}