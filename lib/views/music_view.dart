
    import 'package:apps_music/views/list_container/album_container.dart';
import 'package:apps_music/views/list_container/artistes_container.dart';
import 'package:apps_music/views/list_container/genres_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class musicView extends StatelessWidget {
         @override
      Widget build(BuildContext context){
           return  SingleChildScrollView(
                  child: Column(
                    children: [
                      const Divider(),
                      ArtistContainer(),
                      const Divider(),
                      AlbumsContainer(),
                      const Divider(),
                      GenreContainer(),

                      // Container pour les artistes
                      // Container pour les Albums
                      // Container pcour les artistes
                    ],
                  ),
                );
         }
    }