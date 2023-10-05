import 'package:apps_music/model/row_models/artiste.dart';
import 'package:apps_music/model/row_models/sound.dart';

class Album {
  String title;
  Artist artist;
  List<Song> songs;
  Album({
    required this.artist,
    required this.title,
    required this.songs,
});
}