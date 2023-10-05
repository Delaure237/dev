
 import 'package:apps_music/views/music_view.dart';
import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';
import 'package:apps_music/model/row_models/bar_choice.dart';
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}
class HomeState extends State<Home>{
  int currentIndex = 0;
  List<BarChoice>   items = [
    BarChoice(iconData: Icons.music_note, page: musicView(), label: "Musique"),
    BarChoice(iconData: Icons.whatshot, page: Container(), label: "Favoris"),
    BarChoice(iconData: Icons.search, page: Container(), label: "Recherche"),

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(113),
        child:SafeArea(
            child:Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const  Row(
                    children: [
                      Spacer(),
                      Icon(Icons.radio),
                      Icon(Icons.doorbell),
                      Icon(Icons.settings),
                    ],
                  ),
                 items[currentIndex].titleForAppBar
                ],
              ),
            )
        )
      ),
      body:items[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,
         items: items.map((i) => i.item).toList(),
        onTap:barTapped ,
      ),
    );
  }
  barTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }
}