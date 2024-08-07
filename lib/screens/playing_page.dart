import 'package:flutter/material.dart';
import 'package:quran_app/models/Item.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:quran_app/screens/favorite_page.dart';

class PlayingPage extends StatefulWidget {
  PlayingPage({super.key, required this.item_});
  final Item item_;
  late AudioPlayer _audioPlayer;
  Duration _duration = Duration.zero;
  //Duration _position = Duration.zero;

  void _seek(double value) {
    final position = Duration(seconds: value.toInt());
    _audioPlayer.seek(position);
  }

  @override
  State<PlayingPage> createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {
  @override
  Widget build(BuildContext context) {
    //var _position;
    Duration _position = Duration.zero;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 28, 48),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              const Text(
                'Playing Now',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 70,
        ),
        CircleAvatar(
          radius: 100.0,
          backgroundColor: const Color.fromARGB(255, 227, 225, 225),
          child: Text(
            widget.item_.number,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text(
              widget.item_.name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              widget.item_.info,
              style: TextStyle(color: Color.fromARGB(255, 227, 225, 225)),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_down,
                color: Color.fromARGB(255, 227, 225, 225),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Color.fromARGB(255, 227, 225, 225),
              ),
            ),
          ],
        ),
        Slider(
          value: _position.inSeconds.toDouble(),
          onChanged: _seek(),
          activeColor: Colors.white,
          inactiveColor: Colors.grey,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(
              width: 16,
            ),
            IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(widget.item_.sound));
                },
                icon: const Icon(
                  Icons.pause,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(
              width: 16,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                  size: 30,
                )),
          ],
        ),
      ]),
    );
  }
}

_seek() {}
