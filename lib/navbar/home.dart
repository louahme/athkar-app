import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D8%AD%D8%A7%D8%AF%D9%8A%D8%AB/ahadith.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D8%AD%D8%A7%D8%AF%D9%8A%D8%AB/nar.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D8%AD%D8%A7%D8%AF%D9%8A%D8%AB/paradise.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D8%AD%D8%A7%D8%AF%D9%8A%D8%AB/prayer.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/evning.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/morrning.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/salatek.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/sleeping.dart';

import 'package:adkar/clases/AhadithPage.dart';
import 'package:adkar/clases/AqwalUlamaPage.dart';
import 'package:adkar/clases/DuaaPage.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D9%82%D8%B1%D8%A7%D9%86%20%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85/quraan.dart';
import 'package:adkar/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.all(0.0),
              children: [
                _buildSectionTitle('قسم الأذكار'),
                _buildButtonRow(context, [
                  _buildSectionButton(
                      context,
                      'images/class_adkar/1.jpg',
                      'أذكار الصباح',
                      MorningDhikrPage(),
                      Alignment.bottomCenter),
                  _buildSectionButton(
                      context,
                      'images/class_adkar/2.jpg',
                      'أذكار المساء',
                      EveningDhikrPage(),
                      Alignment.bottomCenter),
                ]),
                _buildButtonRow(context, [
                  _buildSectionButton(context, 'images/class_adkar/3.jpg',
                      'أذكار الصلاة', salatekPage(), Alignment.bottomCenter),
                  _buildSectionButton(context, 'images/class_adkar/4.jpg',
                      'أذكار النوم', Sleeping(), Alignment.bottomCenter),
                ]),
                _buildSectionTitle('قسم الأحاديث'),
                _buildButtonRow(context, [
                  _buildSectionButton(context, 'images/paradise.jpg',
                      ' اجاديث عن الجنة', Paradise(), Alignment.center),
                  _buildSectionButton(context, 'images/nar.jpg',
                      'احاديث عن النار', Nar(), Alignment.bottomCenter),
                ]),
                _buildButtonRow(context, [
                  _buildSectionButton(context, 'images/class_adkar/3.jpg',
                      'احاديث عن الصلاة', Prayer(), Alignment.bottomCenter),
                  _buildSectionButton(context, 'images/7.jpg', ' احاديث',
                      Ahadith(), Alignment.center),
                ]),
                _buildSectionTitle('قسم الأدعية'),
                _buildButtonRow(context, [
                  _buildSectionButton(context, 'images/duaa.jpg', 'دعاء 1',
                      DuaaPage(), Alignment.center),
                  _buildSectionButton(context, 'images/duaa.jpg', 'دعاء 2',
                      DuaaPage(), Alignment.center),
                ]),
                _buildSectionTitle('قسم العلم'),
                _buildButtonRow(context, [
                  _buildSectionButton(context, 'images/7.jpg', 'التوحيد',
                      AqwalUlamaPage(), Alignment.center),
                  _buildSectionButton(context, 'images/7.jpg', 'نواقض الإسلام ',
                      AqwalUlamaPage(), Alignment.center),
                ]),
                _buildButtonRow(context, [
                  _buildSectionButton(context, 'images/7.jpg', 'الصلاة',
                      AqwalUlamaPage(), Alignment.center),
                  _buildSectionButton(context, 'images/7.jpg',
                      ' بعض أقوال العلماء', AqwalUlamaPage(), Alignment.center),
                ]),
                _buildButtonRow(context, [
                  _buildSectionButton(context, 'images/7.jpg', 'الأربعون نووية',
                      AqwalUlamaPage(), Alignment.center),
                ]),
                _buildSectionTitle('قسم القرآن الكريم'),
                _buildSectionButton(context, 'images/8.jpg', 'القرآن الكريم',
                    Quraan(), Alignment.center),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.amiriQuran(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }

  Widget _buildButtonRow(BuildContext context, List<Widget> buttons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }

  Widget _buildSectionButton(BuildContext context, String imagePath,
      String text, Widget page, Alignment alignment) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 100,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white24, width: 2),
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                  alignment: alignment),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
