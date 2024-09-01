import 'package:adkar/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA/%D8%A7%D9%84%D8%A7%D8%AF%D8%B9%D9%8A%D8%A9/duuaa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// استيراد صفحة الأدعية

class DuaaPage extends StatelessWidget {
  final List<Map<String, dynamic>> duaaItems = [
    {'name': 'أدعية متنوعة', 'page': Duuaa()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأدعية'),
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
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: 15),
              ...List.generate(duaaItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => duaaItems[index]['page']),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(
                            'duaa_button.jpg'), // استبدال برقم الصورة المناسب
                        fit: BoxFit.cover,
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
                        duaaItems[index]['name'],
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
              }),
            ],
          ),
        ],
      ),
    );
  }
}
