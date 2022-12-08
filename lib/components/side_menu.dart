import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:untitled1/size_config.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: getProportionScreenWidth(175),
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                child: Image.asset(
                  "assets/images/logo.png",
                )
            ),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.video,
            title: "Video",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.hedphon,
            title: "Audio",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.folder,
            title: "Virtual Exams",
            onTap: () {},
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
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}