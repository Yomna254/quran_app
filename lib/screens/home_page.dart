import 'package:flutter/material.dart';
import 'package:quran_app/components/surah.dart';
import 'package:quran_app/screens/favorite_page.dart';
import 'package:quran_app/models/Item.dart';
import 'package:quran_app/screens/playing_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 3, 28, 48),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mode_night_outlined,
                        color: Color.fromARGB(255, 227, 225, 225),
                        size: 30,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.person_2_outlined,
                    // size: 20,
                    color: Color.fromARGB(255, 227, 225, 225),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 18),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FavoritePage();
                  }));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      // size: 20,
                      color: Color.fromARGB(255, 227, 225, 225),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      'Favorite',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 18),
              child: Row(
                children: [
                  Icon(
                    Icons.language,
                    // size: 20,
                    color: Color.fromARGB(255, 227, 225, 225),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Language',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 18),
              child: Row(
                children: [
                  Icon(
                    Icons.message_outlined,
                    // size: 20,
                    color: Color.fromARGB(255, 227, 225, 225),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Contact us',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 18),
              child: Row(
                children: [
                  Icon(
                    Icons.wb_incandescent_outlined,
                    // size: 20,
                    color: Color.fromARGB(255, 227, 225, 225),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'FAQs',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 18),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    // size: 20,
                    color: Color.fromARGB(255, 227, 225, 225),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    color: Colors.white,
                    Icons.menu,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  Icons.search,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Recommended for you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 140,
                        //width: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/Mahmoud Ali Al-Banna.jpg',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('Mahmoud Ali Al-Banna',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      //Padding(
                      // padding: const EdgeInsets.only(top: 5.0),
                      //child:
                      SizedBox(
                        height: 140,
                        //width: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/Abdul Basit.jpg',
                          ),
                        ),
                      ),
                      //),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('Abdul Basit',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 140,
                        //width: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/Maher Almaikulai.jpg',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('Maher Almaikulai',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 140,
                          //  width: 140,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Al-Minshawi.jpg',
                            ),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Al-Minshawi',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'PlayList',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
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
                    child: Surah_(edited: item[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
