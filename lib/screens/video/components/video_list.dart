import 'package:flutter/material.dart';
import 'package:untitled1/model/video_data.dart';



class VideoContecnt extends StatelessWidget{
  const VideoContecnt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: video.length,
      itemBuilder: (context,index){
        return Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              onTap: (){},
              leading: Image.asset("assets/images/video_icon.png"),
              title: Text(video[index].videoName),
              subtitle: Text(video[index].videoDes),
              trailing:Icon( Icons.cloud_download, ),

            ),
          ),
        );
      },
    );
  }


}