

  import 'package:apps_music/model/row_models/album.dart';
import 'package:apps_music/model/services/music_handler.dart';
import 'package:apps_music/views/cells/albumView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AlbumsContainer extends StatelessWidget {
  List<Album> albums = MusicHandler().allAlbums();
  @override
  Widget build(BuildContext context){
    return Container(
     child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Album",style: GoogleFonts.signika(fontSize: 20),),
        SizedBox(
          height: 300,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: albums.length,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,mainAxisExtent: 120,crossAxisSpacing: 10),
              itemBuilder: ((context,index)=> AlbumViewCell(album: albums[index],))
          ),
        )
      ],
     )
    );
  }
}