//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:quran_app/models/Item.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:quran_app/screens/favorite_page.dart';

class Surah extends StatelessWidget {
  const Surah({
    super.key,
    required this.items,
  });
  final Item items;
  //final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Row(children: [
          SizedBox(
            height: 100,
            //width: 140,
          ),
          CircleAvatar(
            radius: 40.0,
            backgroundColor: const Color.fromARGB(255, 227, 225, 225),
            child: Text(
              items.number,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            children: [
              Text(
                items.name,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                items.info,
                style:
                    const TextStyle(color: Color.fromARGB(255, 227, 225, 225)),
              )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              items.num_page,
              style: const TextStyle(color: Color.fromARGB(255, 227, 225, 225)),
            ),
          ),
        ]),
      ),
    );
  }
}

class Surah_ extends StatelessWidget {
  const Surah_({
    super.key,
    required this.edited,
  });
  final Item edited;
  //final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              //width: 140,
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Color.fromARGB(255, 227, 225, 225),
                child: Text(
                  edited.number,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(edited.name, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
