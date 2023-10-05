import 'dart:math';

import 'package:apps_music/model/enum/genre.dart';
import 'package:apps_music/model/row_models/album.dart';
import 'package:apps_music/model/row_models/artiste.dart';
import 'package:apps_music/model/services/music_datas.dart';
import 'package:apps_music/model/row_models/sound.dart';
 class MusicHandler {
   final datas = MusicData();
  List<Artist> allArtists(){
   List<Artist> artists = [];
    final all = datas.allDatas();
    for(var song in all){
      if(!artists.contains(song.artist)){
        artists.add(song.artist);
      }
    }
      return artists;
  }
  List<Album> allAlbums (){
    List<Album> albums = [];
    final all = datas.allDatas();
    for(var song in all){
      final singer = song.artist.name;
      final albumTitle =  song.album;
      Album newAlbum = albums.firstWhere((album) => (album.artist.name == singer && album.title == album.title),
      orElse: () => Album(artist: song.artist, title: song.album, songs: [song]));
      if(newAlbum.songs.contains(song)) {
        newAlbum.songs.add(song);
      }
      if(!albums.contains(newAlbum)) albums.add(newAlbum);
    }
    return albums;
  }
 List<Genre> allGenres(){
    List<Genre> genres = [];
    final all = datas.allDatas();
    for(var song in all){
      if(!genres.contains(song)) genres.add(song.genre);
    }
    return genres;
 }
 }