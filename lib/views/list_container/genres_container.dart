
  import 'package:apps_music/model/enum/genre.dart';
import 'package:apps_music/model/services/music_handler.dart';
import 'package:apps_music/views/cells/genres_cell.dart';
import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GenreContainer extends StatelessWidget{
 List<Genre> genres = MusicHandler().allGenres();
 @override
  Widget build(BuildContext context){
   return Container(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text("Genre Musicaux",style: GoogleFonts.signika(fontSize: 20),),
         Container(height: 75,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: genres.length,
           itemBuilder:((context,index) => GenreCell(genre: genres[index])) ,
         ),)
       ],
     ),
   );
 }
}