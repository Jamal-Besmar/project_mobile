import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:untitled1/screens/Audio/audio_main_screen.dart';
import 'package:untitled1/screens/subject/subject_screen.dart';
import 'package:untitled1/screens/video/video_main_screen.dart';
import 'package:untitled1/size_config.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)

  {
    return Drawer(
      width: getProportionScreenWidth(175),
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 150,
            child: DrawerHeader(
                child: Image.asset(
                  "assets/images/logo.png",
                )
            ),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.video,
            title:'Video',
            onTap: () {Navigator.pushNamed(context, VideoMainScreen.routename); }
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.hedphon,
            title: "Audio",
            onTap: () {Navigator.pushNamed(context, AudioMainScreen.routename);},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.bookmark,
            title: "Virtual Exams",
            onTap: () {Navigator.pushNamed(context, SubjectScreen.routename);},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.dollar,
            title: "Payments",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Settings",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.logout,
            title: "Log out",
            onTap: () {},
          ),
      ],
    ),

    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.black,
        size: 25,
      ),
      title: Text(
        title,
        style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
      ),
    );
  }
}