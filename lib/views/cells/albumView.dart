
  import 'package:apps_music/controller/playlist_controller.dart';
import 'package:apps_music/model/enum/playlist.dart';
import 'package:apps_music/model/row_models/album.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  import 'package:google_fonts/google_fonts.dart';

class AlbumViewCell extends StatelessWidget {
  final Album album;
  const AlbumViewCell({required this.album});
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return PlayListController(title: album.title,
              playlist: album.songs,
              type: Playlist.album);
        }));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(album.songs[0].thumb,fit: BoxFit.fill,),
      ),
    );
  }
}