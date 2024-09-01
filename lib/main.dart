import 'package:adkar/navbar/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homepage.dart'; // تأكد من وجود هذا الملف
import 'package:flutter_localizations/flutter_localizations.dart';

const Color blue = Color(0xFF050F1C);
const Color green = Color(0xFF007970);
const Color grey = Color(0xFFE0E6E9);

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoritesProvider()),
        // أضف أي Providers أخرى هنا إذا لزم الأمر
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'اذكار مسلم',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: blue,
          titleTextStyle: GoogleFonts.amiriQuran()
              .copyWith(color: grey, fontSize: 20, fontWeight: FontWeight.w700),
          centerTitle: false,
          iconTheme: IconThemeData(
            color: Colors
                .white, // لون أيقونة زر الرجوع وأيقونات أخرى في شريط التطبيق
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
    );
  }
}
