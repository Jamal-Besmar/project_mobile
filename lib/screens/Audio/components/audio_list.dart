import 'package:flutter/material.dart';
import '../../../model/audio_data.dart';


class AudioContecnt extends StatelessWidget{
  const AudioContecnt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: audio.length,
      itemBuilder: (context,index){
        return Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              onTap: (){},
              leading: Image.asset("assets/images/music_icon.png"),
              title: Text(audio[index].audioName),
              subtitle: Text(audio[index].audioDes),
              trailing:Icon( Icons.cloud_download, ),

            ),
          ),
        );
      },
    );
  }


}