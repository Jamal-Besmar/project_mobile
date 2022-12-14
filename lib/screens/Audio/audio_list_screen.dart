import 'package:flutter/material.dart';
import '../../components/menu_bar.dart';
import '../../components/side_menu.dart';
import 'components/audio_list.dart';


class AudioListScreen extends StatelessWidget{
  static String routename= "/audioList";

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar:  CustomeBar(backgroundColor: Colors.transparent,title: "Audio Lecture"),
      drawer: SideMenu(),
      body: AudioContecnt(),

    );
  }
}