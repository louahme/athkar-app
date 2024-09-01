import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%B9%D9%84%D9%85%20%D8%A7%D9%84%D8%B4%D8%B1%D8%B9%D9%8A/salat.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%B9%D9%84%D9%85%20%D8%A7%D9%84%D8%B4%D8%B1%D8%B9%D9%8A/ibnbaz.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%B9%D9%84%D9%85%20%D8%A7%D9%84%D8%B4%D8%B1%D8%B9%D9%8A/nawawiya.dart';
import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%B9%D9%84%D9%85%20%D8%A7%D9%84%D8%B4%D8%B1%D8%B9%D9%8A/nwagidislam.dart';

import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%B9%D9%84%D9%85%20%D8%A7%D9%84%D8%B4%D8%B1%D8%B9%D9%8A/tawhid.dart';

class AqwalUlamaPage extends StatelessWidget {
  final List<Map<String, dynamic>> aqwalItems = [
    {'name': 'التوحيد', 'page': MyHomePage()},
    {'name': 'شروط الصلاة وأركانها وواجباتها', 'page': Salat()},
    {'name': 'نواقض الإسلام', 'page': NawaqidPage()},
    {'name': 'الأربعون نووية', 'page': FortyHadith()},
    {'name': 'بعض أقوال العلماء', 'page': Ibnbaz()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('العلم الشرعي'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
              ),
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: aqwalItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => aqwalItems[index]['page']),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('images/7.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.darken),
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
                      aqwalItems[index]['name'],
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
