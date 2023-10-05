import 'package:apps_music/model/enum/genre.dart';
import 'package:apps_music/model/enum/media_type.dart';
import 'package:apps_music/model/row_models/artiste.dart';
import 'package:apps_music/model/row_models/sound.dart';

class MusicData {
  // Artist
  Artist eminem = Artist(name: "Eminem", urlImage: "https://archive.org/services/img/06-stan-feat.-dido/full/pct:500/0/default.jpg");
  Artist amadeus = Artist(name: "Amadeus", urlImage: "https://archive.org/download/steins-amadeus/cover.jpg");
  Artist tupac =  Artist(name: "2pac", urlImage: "https://archive.org/download/04-pass-the-40/__ia_thumb.jpg");
  Artist asake =  Artist(name: "Asake", urlImage: "https://media.pitchfork.com/photos/648a0b39482bce6a0f832185/1:1/w_320,c_limit/Asake-Work-of-Art.jpg");

 /* Artist eminen = Artist(name: "Eminem", pathImage: "")
  Artist tiakola = Artist(name: "Tiako", pathImage:"lib/datas/thumb/artistes/cd_tiakola1.jpg");
  Artist asake = Artist(name: "Asake", pathImage: "lib/datas/thumb/artistes/asake1.jpg");
  Artist rema = Artist(name: "Rema", pathImage: "lib/datas/thumb/artistes/rema.jpg");
  Artist ruger = Artist(name: "Ruger", pathImage: "lib/datas/thumb/artistes/ruger.png");
  Artist  omahlay = Artist(name: "Ohmalay", pathImage: "lib/datas/thumb/artistes/ohmalay.jpg");*/

  // Music
 // ASSET
  Song get Asake => Song(id: 26, title: "lonely at the top", album: " work of art", path:"lib/datas/songs/loosing_game_drill_remix_by_precious_(lyrics)__arcade_drill_remix(256k).mp3", thumb: "https://media.pitchfork.com/photos/648a0b39482bce6a0f832185/1:1/w_320,c_limit/Asake-Work-of-Art.jpg", artist:asake , genre: Genre.afrobeat, mediaType: MediaType.inApp);
//INTERNET
  List<Song> emi(){
  Genre genre = Genre.rap;
  MediaType mediaType = MediaType.internet;
  String album = "";
  String thumb = "https://archive.org/services/img/06-stan-feat.-dido/full/pct:500/0/default.jpg";
  Artist artist = eminem;
  return [
    Song(id: 1, title: "My name is", album: album, path: "https://archive.org/download/06-stan-feat.-dido/01%20-%20My%20Name%20Is.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 2, title: "Guilty conscience", album: album, path: "https://archive.org/download/06-stan-feat.-dido/04%20-%20Guilty%20Conscience.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 3, title: "The way I am", album: album, path: "https://archive.org/download/06-stan-feat.-dido/07%20-%20The%20Way%20I%20Am.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 4, title: "Without me", album: album, path: "https://archive.org/download/06-stan-feat.-dido/08%20-%20Without%20Me.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 5, title: "Just don't give a fuck", album: album, path: "https://archive.org/download/06-stan-feat.-dido/02%20-%20Just%20Don%27t%20Give%20A%20Fuck.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 6, title: "Cleaning My closet", album: album, path: "https://archive.org/download/06-stan-feat.-dido/09%20-%20Cleanin%27%20Out%20My%20Closet.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 7, title: "Super man", album: album, path: "https://archive.org/download/06-stan-feat.-dido/10%20-%20Superman.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 8, title: "Sing for moment", album: album, path: "https://archive.org/download/06-stan-feat.-dido/11%20-%20Sing%20For%20The%20Moment.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 9, title: "Business", album: album, path: "https://archive.org/download/06-stan-feat.-dido/12%20-%20Business.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 10, title: "Loose yoursel", album: album, path: "https://archive.org/download/06-stan-feat.-dido/13%20-%20Lose%20Yourself.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
  ];
}
List<Song> ama(){
  Genre genre = Genre.rap;
  MediaType mediaType= MediaType.internet;
  String album = "Kanako-Ito";
  String thumb = "https://archive.org/download/steins-amadeus/cover.jpg";
  Artist artist = amadeus;
  return [
    Song(id: 11, title: "Sorrowful", album: album, path: "https://archive.org/download/steins-amadeus/01.%20Amadeus%27s%20Sorrowful%20Tone%20~%20Kurisu%20Makise.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 12, title: "Amadeus", album: album, path: "https://archive.org/download/steins-amadeus/02.%20Amadeus.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 13, title: "Ignis", album: album, path: "https://archive.org/download/steins-amadeus/03.%20Ignis.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 14, title: "Amadeus[instrumental]", album: album, path: "https://archive.org/download/steins-amadeus/04.%20Amadeus%20%5BInstrumental%5D.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 15, title: "Ignis[instrumental]", album: album, path: "https://archive.org/download/steins-amadeus/05.%20Ignis%20%5BInstrumental%5D.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),


  ];
}
List<Song> pac(){
  Genre genre= Genre.rap;
  MediaType mediaType = MediaType.internet;
  String thumb =  "https://archive.org/download/04-pass-the-40/__ia_thumb.jpg";
  String album = "revolution";
  Artist artist = tupac;
  return [
    Song(id: 16, title: "Letter to the president", album:album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/01%202Pac%20%26%20Outlawz%20-%20Letter%20To%20The%20President%20%28feat.%20Big%20Syke%29.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 17, title: "Still rise", album:album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/02%202Pac%20%26%20Outlawz%20-%20Still%20I%20Rise.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 18, title: "baby don't cry", album:album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/04%202Pac%20%26%20Outlawz%20-%20Baby%20Don%27t%20Cry%20%28Keep%20Ya%20Head%20Up%20II%29.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 19, title: "as the world turn", album:album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/05%202Pac%20%26%20Outlawz%20-%20As%20The%20World%20Turns.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 20, title: "black jesuz", album:album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/06%202Pac%20%26%20Outlawz%20-%20Black%20Jesuz.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
     Song(id: 21, title: "Hell 4 hustler", album: album, path:"https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/08%202Pac%20%26%20Outlawz%20-%20Hell%204%20A%20Hustler.mp3" , thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 22, title: "Homeboyz", album:album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/07%202Pac%20%26%20Outlawz%20-%20Homeboyz.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 23, title:"High speed" , album: album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/09%202Pac%20%26%20Outlawz%20-%20High%20Speed.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 24, title: "The good die young", album: album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/10%202Pac%20%26%20Outlawz%20-%20The%20Good%20Die%20Young.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 25, title: "killuminati", album: album, path: "https://archive.org/download/04-pass-the-40/2PAC/2Pac%20%26%20Outlawz%20-%201999%20-%20Still%20I%20Rise%20%28490%20413-2%29%20%28DE%29%20%5B320%20kbps%5D/11%202Pac%20%26%20Outlawz%20-%20Killuminati.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType)
  ];

  }
  List<Song> allDatas() {
    final List<Song> all = [
    ];
    all.addAll(ama());
    all.addAll(pac());
    all.addAll(emi());

    all.add(Asake);
    return all;
  }
}
//Song get mozart => Song(id: 1, title: "lonely at the top",album: "art", path: "Asake_-_Lonely_At_The_Top_(Official_Video)(256k).mp3", thumb: "lib/datas/thumb/tiako.jpg", artist: tiakola, genre: Genre.afrobeat, mediaType: MediaType.inApp);
  /* List<Song>(){
     Genre genre = Genre.rap;
     MediaType mediaType = MediaType.internet;
     String album = "melo";
     String thumb= "lib/datas/thumb/tiako.jpg";
     Artist artist = eminen;
     Song(id: 1, title: "My name is", album: album, path: "https://archive.org/download/06-stan-feat.-dido/01 - My Name Is.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType);
     Song(id: 2, title: "", album: album, path: "", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType);
     Song(id: 3, title: "", album: album, path: "", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType);
     Song(id: 4, title: "", album: album, path: path, thumb: thumb, artist: artist, genre: genre, mediaType: mediaType)
   }
  List<Song> pink (){
  Genre genre = Genre.afrobeat;
  MediaType mediaType = MediaType.inApp;
  String album = "astro";
  String thumb= "lib/datas/thumb/ruger.jpg";
  Artist artist = ruger;
  return [
    Song(id: 1, title: "Dior", album: album, path: "lib/datas/songs/dior.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 2, title: "Snapchat", album: album, path: "lib/datas/songs/snapchat.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 3, title: "Girlfriend", album: album, path: "lib/datas/songs/girlfriend.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 4, title: "Bounce", album: album, path: "lib/datas/songs/bounce.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
    Song(id: 5, title: "wewe", album: album, path: "lib/datas/songs/wewe.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType)
  ];
 }
  List<Song> tiako (){
    Genre genre = Genre.afrobeat;
    MediaType mediaType = MediaType.inApp;
    String album = "melo";
    String thumb= "lib/datas/thumb/tiako.jpg";
    Artist artist = tiakola;
    return [
      Song(id: 6, title: "Gasolina", album: album, path: "lib/datas/songs/gasolian.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 7, title: "la clé", album: album, path: "lib/datas/songs/cle.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 8, title: "Meuda", album: album, path: "lib/datas/songs/meuda.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 9, title: "Mode_AV", album: album, path: "lib/datas/songs/av.m4a", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 10, title: "parapluie", album: album, path: "lib/datas/songs/parapluie.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 11, title:"Si je savais ", album: album, path: "lib/datas/songs/melo.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType)
    ];

  }
  List<Song> money (){
    Genre genre = Genre.afrobeat;
    MediaType mediaType = MediaType.inApp;
    String album = "Mr money";
    String thumb= "lib/datas/thumb/asake.png";
    Artist artist = asake;
    return [
      Song(id: 11, title: "joha", album: album, path: "lib/datas/songs/joha.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 12, title: "Dupe", album: album, path: "lib/datas/songs/dupe.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 13, title: "Organise", album: album, path: "lib/datas/songs/organise.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 14, title: "Dull", album: album, path: "lib/datas/songs/dull.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 15, title: "Nzaza", album: album, path: "lib/datas/songs/nzaza.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
       Song(id: 16, title: "sungba" ,album: album, path: "lib/datas/songs/sungba.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 17, title: "Terminator", album: album, path: "lib/datas/songs/terminator.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),

    ];
  }
  List<Song> remal (){
    Genre genre = Genre.afrobeat;
    MediaType mediaType = MediaType.inApp;
    String album = "astro";
    String thumb= "lib/datas/thumb/rema.jpg";
    Artist artist = rema;
    return [
      Song(id: 18, title: "Holiday", album: album, path: "lib/datas/songs/holiday.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 19, title: "Ginger", album: album, path: "lib/datas/songs/ginger.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 20, title: "Charm", album: album, path: "lib/datas/songs/charm.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 21, title: "Dirty", album: album, path: "lib/datas/songs/dirty.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
      Song(id: 22, title: "Sound_gasm", album: album, path: "lib/datas/songs/soundgasm.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType)
    ];
  }
  List<Song> omah(){
   Genre genre = Genre.afrobeat;
   MediaType mediaType = MediaType.inApp;
   String album = "bad_influence";
   String thumb = "lib/datas/thumb/omah.jpeg";
   Artist artist = omahlay;
   return [
     Song(id: 23, title: "imagine", album: album, path: "lib/datas/songs/imagine.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
     Song(id: 24, title: "it's_yours", album: album, path: "lib/datas/songs/yours.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
     Song(id: 25, title: "joanna", album: album, path: "lib/datas/songs/joanna.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
     Song(id: 26, title: "reason", album: album, path: "lib/datas/songs/reason.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
     Song(id: 27, title: "lo_lo", album: album, path: "lib/datas/songs/lolo.m4a", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
     Song(id: 28, title: "bad_influence", album: album, path: "lib/datas/songs/bad.mp3", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
     Song(id: 29, title: "woman", album: album, path: "lib/datas/songs/woman.m4a", thumb: thumb, artist: artist, genre: genre, mediaType: mediaType),
   ];
  }
  List<Song> allDatas() {
  final List<Song> all = [
  ];
  all.addAll(pink());
  all.addAll(tiako());
  all.addAll(money());
  all.addAll(remal());
  all.addAll(omah());
 // all.add(mozart);
   return all;
  }
}*/
