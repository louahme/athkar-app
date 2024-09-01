import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/evning.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/morrning.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/salatek.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/sleeping.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdhkarPage extends StatelessWidget {
  final List<Map<String, dynamic>> adhkarItems = [
    {
      'name': 'أذكار الصباح',
      'page': MorningDhikrPage(),
      'image': 'images/class_adkar/1.jpg',
    },
    {
      'name': 'أذكار المساء',
      'page': EveningDhikrPage(),
      'image': 'images/class_adkar/2.jpg',
    },
    {
      'name': 'أذكار الصلاة',
      'page': salatekPage(),
      'image': 'images/class_adkar/3.jpg',
    },
    {
      'name': 'أذكار النوم',
      'page': Sleeping(),
      'image': 'images/class_adkar/4.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأذكار'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.darken),
                ),
              ),
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: adhkarItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => adhkarItems[index]['page']),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(adhkarItems[index]['image']),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      adhkarItems[index]['name'],
                      style: GoogleFonts.harmattan(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
