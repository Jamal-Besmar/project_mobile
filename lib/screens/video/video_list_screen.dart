import 'package:flutter/material.dart';
import 'package:untitled1/screens/video/components/video_list.dart';
import '../../components/menu_bar.dart';
import '../../components/side_menu.dart';



class VideoListScreen extends StatelessWidget{
  static String routename= "/videolist";

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar:  CustomeBar(backgroundColor: Colors.transparent,title: "Video Lecture"),
      drawer: SideMenu(),
      body: VideoContecnt(),

    );
  }
}