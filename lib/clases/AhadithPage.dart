import 'package:adkar/صفحات/احاديث/nar.dart';
import 'package:adkar/صفحات/احاديث/paradise.dart';
import 'package:adkar/صفحات/احاديث/prayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AhadithPage extends StatelessWidget {
  final List<Map<String, dynamic>> ahadithItems = [
    {
      'name': 'أحاديث عن الجنة',
      'image': 'images/paradise.jpg',
      'page': Paradise(),
      'alignment': Alignment.center, // تحديد المحاذاة هنا
    },
    {
      'name': 'أحاديث عن الصلاة',
      'image': 'images/class_adkar/3.jpg',
      'page': Prayer(),
      'alignment': Alignment.bottomCenter, // تحديد المحاذاة هنا
    },
    {
      'name': 'أحاديث عن النار',
      'image': 'images/nar.jpg',
      'page': Nar(),
      'alignment': Alignment.bottomCenter, // تحديد المحاذاة هنا
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأحاديث'),
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
                      Colors.black.withOpacity(0.6), BlendMode.darken),
                ),
              ),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, // عرض عمود واحد لعرض الأزرار في سطر واحد
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3, // لتحديد نسبة العرض إلى الارتفاع
            ),
            itemCount: ahadithItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ahadithItems[index]['page']),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(ahadithItems[index]['image']),
                      fit: BoxFit.cover,
                      alignment: ahadithItems[index]
                          ['alignment'], // استخدام المحاذاة هنا
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.darken),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      ahadithItems[index]['name'],
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
