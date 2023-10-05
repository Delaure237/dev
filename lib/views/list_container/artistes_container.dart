  import 'package:apps_music/model/row_models/artiste.dart';
import 'package:apps_music/model/services/music_handler.dart';
import 'package:apps_music/views/cells/artist_circle_cells.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistContainer extends StatelessWidget{
  final List<Artist> artists = MusicHandler().allArtists();
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Artiste",style: GoogleFonts.signika(fontSize: 20),),
          Container(
            height: 90,
            child: ListView.builder(
              itemCount: artists.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index){
              return  ArtisteCircleCell(artist:artists[index] ,height: 75,);
                }
            ),
          )
        ],
      ),
    );
  }
  }