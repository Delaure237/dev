  import 'package:apps_music/model/row_models/artiste.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ArtisteCircleCell extends StatelessWidget {
  final Artist artist;
  final double height;
  const ArtisteCircleCell({Key? key,required this.artist,required this.height}):super(key: key);
  @override
  Widget build(BuildContext  context){
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ClipOval(
          child: Image.network(artist.urlImage,width: height,height: height,fit: BoxFit.cover,),
        ),
      ),
    );
  }
  onTap(){

  }
}