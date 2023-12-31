

import 'package:apps_music/model/enum/genre.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreCell extends StatelessWidget {
  final Genre genre;
  const GenreCell({required this.genre});
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){

      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.45,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromRGBO(256, 256, 256, 1)
        ),
        child: Center(
          child: Text(genre.name,style: GoogleFonts.signika(fontSize: 20,color: Colors.blueGrey),),
        ),
      ),
    );
  }
}