import 'package:apps_music/model/row_models/sound.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerView extends StatelessWidget {
  final Song song;
  final EdgeInsets padding = const EdgeInsets.all(8);
  final Container spacer = Container(
    width: 16,
  );
  final Function() onRepeatPressed;
  final Function() onShufflePressed;
  final Function() onPlayPause;
  final Function() onRewindPressed;
  final Function() onForwardPressed;

  final bool shuffle;
  final bool repeat;
  final Duration maxDuraction;
  final Duration position;
  final Function(double) onPositionChanged;

  PlayerView(
      {super.key,
      required this.song,
      required,
      required this.onRepeatPressed,
      required this.onShufflePressed,
      required this.onForwardPressed,
      required this.onPlayPause,
      required this.position,
      required this.maxDuraction,
      required this.onRewindPressed,
      required this.repeat,
      required this.shuffle,
      required this.onPositionChanged});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(song.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              child: Image.network(
                song.thumb,
                fit: BoxFit.fill,
                height: size.width / 2,
              ),
            ),
            const Divider(
              thickness: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.ios_share_sharp),
                spacer,
                const Icon(Icons.menu),
                spacer,
                const Icon(Icons.whatshot),
              ],
            ),
            Text(
              song.artist.name,
              style: GoogleFonts.signika(color: Colors.redAccent, fontSize: 37),
            ),
            Text(
              song.title,
              style: GoogleFonts.signika(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Card(
              child: Container(
                color: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: onRepeatPressed,
                            icon: Icon(
                              (repeat) ? Icons.repeat_on_rounded : Icons.repeat,
                              color: Colors.white,
                            )),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: padding,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.fast_rewind,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: padding,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.play_circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: padding,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.fast_forward,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: onShufflePressed,
                          icon: Icon(
                            (shuffle)
                                ? Icons.shuffle_on_rounded
                                : Icons.shuffle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Row(),
                        Slider(
                          min: 0,
                          max: maxDuraction.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: onPositionChanged,
                          thumbColor: Colors.red,
                          activeColor: Colors.red,
                          inactiveColor: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.speaker),
                Icon(Icons.timer),
                Icon(Icons.whatshot_outlined)
              ],
            )
          ],
        ),
      ),
    );
  }
}
