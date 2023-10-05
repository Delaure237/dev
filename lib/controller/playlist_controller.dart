
   import 'package:apps_music/controller/play_controller.dart';
import 'package:apps_music/model/enum/playlist.dart';
import 'package:apps_music/model/row_models/sound.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayListController extends StatelessWidget{
  final List<Song>playlist;
  final String title;
  final Playlist type;
  const  PlayListController({super.key, required this.title,required this.playlist,required this.type});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            topView(MediaQuery.of(context).size),
            Expanded(child:
            ListView.separated(

              itemBuilder:(context,index){
              return ListTile(
                leading: Image.network(playlist[index].thumb),
                trailing: const Icon(Icons.arrow_right),
                title: Text(playlist[index].title),
                onTap: (){
                  final route = MaterialPageRoute(builder: ((context)=> MyPlayerController(
                      playlist: playlist,
                      SongToPlay: playlist[index],
                  )));
                  Navigator.push(context, route);
                },
              );
            },
                separatorBuilder: (( context,index) => const Divider()),
                itemCount: playlist.length,
            )
            )
          ],
        ),
      ),
    );
  }
  Widget topView(Size size){
 switch(type)  {
   case Playlist.artist:return Container();
   case Playlist.album:return Container(
     child: Column(
       children: [
         Image.network(playlist.first.thumb,height: size.height/4,),
         Text(playlist.first.album,style: GoogleFonts.signika(fontSize: 25),),
         Text(playlist.first.artist.name,style: GoogleFonts.signika(fontSize: 16,color: Colors.red),)
       ],
     ),
   );
   case Playlist.genre:return Container();
   default:return Container();
 }
  }
}