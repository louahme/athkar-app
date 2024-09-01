import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';
import 'package:adkar/navbar/favorites_provider.dart';

class HeartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

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
            ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: favoritesProvider.favorites.length,
              itemBuilder: (context, index) {
                final dhikr = favoritesProvider.favorites[index];
                final dhikrText = dhikr['text'] ?? '';
                final dhikrExplanation = dhikr['explanation'] ?? '';
                final backgroundImage = dhikr['image'] ?? 'images/default.jpg';

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(backgroundImage),
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: ListTile(
                            title: Text(
                              dhikrText,
                              style: GoogleFonts.scheherazadeNew(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              dhikrExplanation,
                              style: GoogleFonts.scheherazadeNew(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            tileColor: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(Icons.favorite, color: Colors.red),
                                onPressed: () {
                                  favoritesProvider.removeFavorite(dhikrText);
                                },
                              ),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(Icons.share, color: Colors.white),
                                onPressed: () {
                                  Share.share(dhikrText);
                                },
                              ),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(Icons.copy, color: Colors.white),
                                onPressed: () {
                                  Clipboard.setData(
                                      ClipboardData(text: dhikrText));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('تم نسخه إلى الحافظة')),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
