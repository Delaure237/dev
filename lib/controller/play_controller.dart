
import 'package:apps_music/model/enum/media_type.dart';
import 'package:apps_music/model/row_models/sound.dart';
import 'package:apps_music/views/player_view.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class MyPlayerController extends StatefulWidget {
  final Song SongToPlay;

  final List<Song> playlist;
  const MyPlayerController({required this.playlist,required this.SongToPlay});


  @override
  MyPlayerControllerState createState() => MyPlayerControllerState();
}
class MyPlayerControllerState extends State<MyPlayerController>{
  late AudioPlayer audioPlayer;
  AudioCache? audioCache;
 late  Song song ;
 bool  playShuffle =  false;
 bool repeat = false;
 Duration position = const Duration(seconds: 0);
 Duration maxDuration = const Duration(seconds: 0);
 @override
 void initState(){
   super.initState();
   song = widget.SongToPlay;
   setupPlayer();
 }
 @override
 void dispose(){
   clearPlayer();
   super.dispose();
 }
  @override
  Widget build(BuildContext context) => PlayerView(song: song,onRepeatPressed: onRepeatPressed,
    onShufflePressed: onShufflePressed,
    onForwardPressed: onShufflePressed,
    onPlayPause: onShufflePressed,
    onRewindPressed: onShufflePressed,
    onPositionChanged:onPositionChanged,
    position: position,

    maxDuraction: maxDuration,
    repeat: repeat,
    shuffle: playShuffle,

  );
 onPositionChanged(double newPosition){

 }
 onRepeatPressed(){
setState(() {
  repeat =!repeat;
});
 }
 onPlayPause(){

 }
 onShufflePressed(){
         setState(() {
           playShuffle =! playShuffle;
         });
 }

Future<String> pathForInApp() async   {
   String  string = "";
   audioCache = AudioCache();
   if(audioCache!= null){
     final uri = await audioCache!.load(song.path);
     string = uri.toString();
     return string;
   }
   return string;

   }



 setupPlayer() async {
    audioPlayer=  AudioPlayer();
    final url = (song.mediaType == MediaType.internet) ? song.path : await pathForInApp();
    await audioPlayer.play(UrlSource(url));
 }
 clearPlayer(){
   audioPlayer.stop();
   audioPlayer.dispose();
   if(audioCache  != null) audioCache?.clearAll();
   audioCache = null;
 }
}