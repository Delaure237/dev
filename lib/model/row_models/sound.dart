 import 'package:apps_music/model/row_models/artiste.dart';
import 'package:apps_music/model/enum/genre.dart';
import 'package:apps_music/model/enum/media_type.dart';

class Song{
  int id;
  String title;
  String album;
  String path;
  String thumb;
  Artist artist;
  Genre genre;
  MediaType mediaType;
     Song(
  {
    required this.id,
    required this.title,
    required this.album,
    required this.path,
    required this.thumb,
    required this.artist,
    required this.genre,
    required this.mediaType
}
         );
 }