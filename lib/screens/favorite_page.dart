import 'package:flutter/material.dart';
import 'package:quran_app/components/surah.dart';
import 'package:quran_app/models/Item.dart';
import 'package:quran_app/screens/playing_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
  final List<Item> item = const [
    Item(
      sound: 'assets/sounds/An-Nas.mp3',
      info: 'Makki - 6 Verses',
      name: 'Surah An-Nas',
      num_page: '604',
      number: '114',
    ),
    Item(
      sound: 'assets/sounds/Al-Falaq.mp3',
      info: 'Makki - 5 Verses',
      name: 'Surah Al-Falaq',
      num_page: '604',
      number: '113',
    ),
    Item(
      sound: 'assets/sounds/Al-Ikhlas.mp3',
      info: 'Makki - 4 Verses',
      name: 'Surah Al-Ikhlas',
      num_page: '604',
      number: '112',
    ),
    Item(
      sound: 'assets/sounds/Al-Masad.mp3',
      info: 'Makki - 5 Verses',
      name: 'Surah Al-Masad',
      num_page: '603',
      number: '111',
    ),
    Item(
      sound: 'assets/sounds/An-Nasr.mp3',
      info: 'Makki - 3 Verses',
      name: 'Surah An-Nasr',
      num_page: '603',
      number: '110',
    ),
    Item(
      sound: 'assets/sounds/Al-Kafirun.mp3',
      info: 'Makki - 6 Verses',
      name: 'Surah Al-Kafirun',
      num_page: '603',
      number: '109',
    ),
    Item(
      sound: 'assets/sounds/Al-Kawthar.mp3',
      info: 'Makki - 3 Verses',
      name: 'Surah Al-Kawthar',
      num_page: '602',
      number: '108',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 28, 48),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu_open_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PlayingPage(
                          item_: item[index],
                        );
                      }));
                    },
                    child: Surah(items: item[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
/*GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PlayingPage(
                          item_: item[index],
                        );
                      }));
                    },
                    child: Surah(items: item[index]),
                  );
                  */