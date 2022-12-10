import 'package:flutter/material.dart';


class CustomeBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeBar ({super.key , required this.backgroundColor ,required this.title });
  final Color backgroundColor;
   final String title;
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar (
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Text(title),
      iconTheme: const IconThemeData(color: Colors.black, size: 28),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHdvbWVufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),
        )
      ],
    );
  }




}