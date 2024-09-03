import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/evning.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/morrning.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/salatek.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%B0%D9%83%D8%A7%D8%B1/sleeping.dart';
import 'package:flutter/material.dart';
import 'package:adkar/clases/AdhkarPage.dart';
import 'package:adkar/clases/AhadithPage.dart';
import 'package:adkar/clases/AqwalUlamaPage.dart';
import 'package:adkar/clases/DuaaPage.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D9%82%D8%B1%D8%A7%D9%86%20%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85/quraan.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            _buildSectionTitle('قسم الأذكار'),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/class_adkar/1.jpg', MorningDhikrPage()),
              _buildSectionButton(
                  context, 'images/class_adkar/2.jpg', EveningDhikrPage()),
            ]),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/class_adkar/3.jpg', salatekPage()),
              _buildSectionButton(
                  context, 'images/class_adkar/4.jpg', Sleeping()),
            ]),
            _buildSectionTitle('قسم الأحاديث'),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/buttons/hadith1.jpg', AhadithPage()),
              _buildSectionButton(
                  context, 'images/buttons/hadith2.jpg', AhadithPage()),
            ]),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/buttons/hadith3.jpg', AhadithPage()),
              _buildSectionButton(
                  context, 'images/buttons/hadith4.jpg', AhadithPage()),
            ]),
            _buildSectionTitle('قسم الأدعية'),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/buttons/duaa1.jpg', DuaaPage()),
              _buildSectionButton(
                  context, 'images/buttons/duaa2.jpg', DuaaPage()),
            ]),
            _buildSectionTitle('قسم العلم'),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/buttons/ilm1.jpg', AqwalUlamaPage()),
              _buildSectionButton(
                  context, 'images/buttons/ilm2.jpg', AqwalUlamaPage()),
            ]),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/buttons/ilm3.jpg', AqwalUlamaPage()),
              _buildSectionButton(
                  context, 'images/buttons/ilm4.jpg', AqwalUlamaPage()),
            ]),
            _buildButtonRow(context, [
              _buildSectionButton(
                  context, 'images/buttons/ilm5.jpg', AqwalUlamaPage()),
            ]),
            _buildSectionTitle('قسم القرآن الكريم'),
            _buildSectionButton(context, 'images/buttons/quraan.jpg', Quraan()),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }

  Widget _buildButtonRow(BuildContext context, List<Widget> buttons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }

  Widget _buildSectionButton(
      BuildContext context, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 90,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white24, width: 2),
          image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
      ),
    );
  }
}
