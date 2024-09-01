import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:adkar/clases/AdhkarPage.dart';
import 'package:adkar/clases/AhadithPage.dart';
import 'package:adkar/clases/AqwalUlamaPage.dart';
import 'package:adkar/clases/DuaaPage.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D9%82%D8%B1%D8%A7%D9%86%20%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85/quraan.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _images = [
    'images/random/image1.jpg',
    'images/random/image2.jpg',
    'images/random/image3.jpg',
    'images/random/image4.jpg',
    'images/random/image5.jpg',
    'images/random/image6.jpg',
    'images/random/image7.jpg',
    'images/random/image8.jpg',
    'images/random/image9.jpg',
  ];

  int _currentImageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startImageChangeTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startImageChangeTimer() {
    _timer = Timer.periodic(Duration(seconds: 10), (timer) {
      _changeImageRandomly();
    });
  }

  void _changeImageRandomly() {
    setState(() {
      _currentImageIndex = Random().nextInt(_images.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // خلفية الصفحة كصورة
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 15),
                // صورة متغيرة تلقائيًا
                GestureDetector(
                  onTap: _changeImageRandomly,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(_images[_currentImageIndex]),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.1), BlendMode.darken),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // أزرار الأقسام الأربعة في سطر منفصل
                _buildSectionButton(
                    context, 'images/buttons/1.jpg', AdhkarPage()),
                _buildSectionButton(
                    context, 'images/buttons/2.jpg', AhadithPage()),
                _buildSectionButton(
                    context, 'images/buttons/3.jpg', DuaaPage()),
                _buildSectionButton(
                    context, 'images/buttons/4.jpg', AqwalUlamaPage()),
                _buildSectionButton(context, 'images/buttons/5.jpg', Quraan()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // دالة لإنشاء زر للقسم بدون كتابة وبحواف بيضاء
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
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white24, width: 2),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 8,
              color: Colors.white10,
            )
          ],
        ),
      ),
    );
  }
}
