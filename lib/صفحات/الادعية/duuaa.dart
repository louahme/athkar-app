import 'package:adkar/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import 'package:adkar/navbar/favorites_provider.dart';

class Duuaa extends StatefulWidget {
  @override
  _DuuaaState createState() => _DuuaaState();
}

class _DuuaaState extends State<Duuaa> {
  List<Map<String, String>> _dhikrList = [
    {
      'text':
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنَ الْخَيْرِ كُلِّهِ، عَاجِلِهِ وَآجِلِهِ، مَا عَلِمْتُ مِنْهُ وَمَا لَمْ أَعْلَمْ، وَأَعُوذُ بِكَ مِنَ الشَّرِّ كُلِّهِ، عَاجِلِهِ وَآجِلِهِ، مَا عَلِمْتُ مِنْهُ وَمَا لَمْ أَعْلَمْ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنَ الْمُتَّقِينَ، وَاغْفِرْ لِي وَلِوَالِدَيَّ، وَارْزُقْنِي الْقُدْرَةَ عَلَى الصَّبْرِ وَالشُّكْرِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْني مِنْ عُتَقَاءِ رَمَضَانَ، وَأَدْخِلْنِي جَنَّتَكَ مِنْ أَبْوَابِهَا الثَّمَانِيَةِ'
    },
    {
      'text':
          'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ'
    },
    {
      'text':
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلًا مُتَقَبَّلًا'
    },
    {
      'text':
          'اللَّهُمَّ أَصْلِحْ لِي دِينِي الَّذِي هُوَ عِصْمَةُ أَمْرِي، وَصَحِّحْ لِي دُنْيَايَ الَّذِي فِيهَا مَعَاشِي، وَصَحِّحْ لِي آخِرَتِي الَّتِي إِلَيْهَا مَعَادِي'
    },
    {
      'text':
          'اللَّهُمَّ اغْفِرْ لِي وَلِوَالِدَيَّ وَارْحَمْهُمَا كَمَا رَبَّيَانِي صَغِيرًا'
    },
    {
      'text':
          'اللَّهُمَّ عَافِنِي فِي بَدَنِي، وَعَافِنِي فِي سَمْعِي، وَعَافِنِي فِي بَصَرِي، لَا إِلَهَ إِلَّا أَنتَ'
    },
    {
      'text':
          'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْبَرَصِ، وَالْجُنُونِ، وَالْجُذَامِ، وَسَيِّئِ الْأَسْقَامِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنَ الْمُتَّقِينَ، وَاغْفِرْ لِي وَلِوَالِدَيَّ، وَارْزُقْنِي الْقُدْرَةَ عَلَى الصَّبْرِ وَالشُّكْرِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنَ الْصَّابِرِينَ، وَارْزُقْنِي الرِّضا وَالْقَنَاعَةَ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْقُرْآنِ الَّذِينَ هُمْ أَهْلُكَ وَخَاصَّتُكَ'
    },
    {'text': 'اللَّهُمَّ عَافِنِي مِنَ الْفَقْرِ وَالْجُوعِ وَالْمَذَلَّةِ'},
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ، وَاغْفِرْ لِي وَلِوَالِدَيَّ'
    },
    {
      'text':
          'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْجَنَّةِ، وَاحْمِنِي مِنْ عَذَابِ النَّارِ'
    },
    {'text': 'اللَّهُمَّ أَطِلْ عُمُرِي عَلَى طَاعَتِكَ وَأَحْسِنْ عَمَلِي'},
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنَ الْمُتَّقِينَ وَالْمُخْلِصِينَ فِي عِبَادَتِكَ'
    },
    {
      'text':
          'اللَّهُمَّ اغْفِرْ لِي وَلِوَالِدَيَّ وَارْزُقْنِي النَّجَاحَ فِي دُنْيَايَ وَآخِرَتِي'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْخَيْرِ وَالْبِرِّ وَالصَّلَاحِ'
    },
    {'text': 'اللَّهُمَّ أَحْسِنْ عَمَلِي وَحَسِّنْ خُلُقِي وَرِزْقِي'},
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ وَسَلِّمْنِي مِنَ الْعَذَابِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ، وَاغْفِرْ لِي وَلِوَالِدَيَّ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْقُرْآنِ الَّذِينَ هُمْ أَهْلُكَ وَخَاصَّتُكَ'
    },
    {
      'text':
          'اللَّهُمَّ عَافِنِي فِي بَدَنِي وَعَافِنِي فِي سَمْعِي وَعَافِنِي فِي بَصَرِي'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْخَيْرِ وَالْبِرِّ وَالصَّلَاحِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ، وَاغْفِرْ لِي وَلِوَالِدَيَّ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْجَنَّةِ، وَاحْمِنِي مِنْ عَذَابِ النَّارِ'
    },
    {'text': 'اللَّهُمَّ أَطِلْ عُمُرِي عَلَى طَاعَتِكَ وَأَحْسِنْ عَمَلِي'},
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْخَيْرِ وَالْبِرِّ وَالصَّلَاحِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ، وَاغْفِرْ لِي وَلِوَالِدَيَّ'
    },
    {'text': 'اللَّهُمَّ أَحْسِنْ عَمَلِي وَحَسِّنْ خُلُقِي وَرِزْقِي'},
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ، وَسَلِّمْنِي مِنَ الْعَذَابِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْقُرْآنِ الَّذِينَ هُمْ أَهْلُكَ وَخَاصَّتُكَ'
    },
    {
      'text':
          'اللَّهُمَّ عَافِنِي فِي بَدَنِي وَعَافِنِي فِي سَمْعِي وَعَافِنِي فِي بَصَرِي'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ أَهْلِ الْخَيْرِ وَالْبِرِّ وَالصَّلَاحِ'
    },
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ، وَاغْفِرْ لِي وَلِوَالِدَيَّ'
    },
    {'text': 'اللَّهُمَّ أَحْسِنْ عَمَلِي وَحَسِّنْ خُلُقِي وَرِزْقِي'},
    {
      'text':
          'اللَّهُمَّ اجْعَلْنِي مِنْ عُتَقَاءِ رَمَضَانَ، وَسَلِّمْنِي مِنَ الْعَذَابِ'
    }
  ];

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أحاديث عن الصلاة',
        ),
      ),
      body: Container(
        color: Colors.yellow[50], // لون الخلفية الأصفر الخفيف
        child: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: _dhikrList.length,
            itemBuilder: (context, index) {
              final dhikr = _dhikrList[index];

              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 375),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Dismissible(
                      key: UniqueKey(),
                      background: Container(color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow[50], // خلفية الحاوية
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 8,
                                color: blue.withOpacity(0.3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                child: Center(
                                  child: Text(
                                    dhikr['text'] ??
                                        'نص غير متوفر', // استخدم قيمة افتراضية في حالة null
                                    style: GoogleFonts.amiri(
                                        fontSize: 19,
                                        color: blue,
                                        fontWeight: FontWeight.w900),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 4,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          favoritesProvider.isFavorite(
                                                  dhikr['text'] ??
                                                      '') // تحقق من حالة الذكر
                                              ? Icons
                                                  .favorite // رمز القلب الممتلئ
                                              : Icons
                                                  .favorite_border, // رمز القلب الفارغ
                                          color: favoritesProvider.isFavorite(
                                                  dhikr['text'] ?? '')
                                              ? blue // اللون الأزرق عندما يكون مفضلاً
                                              : blue, // اللون الأزرق عندما لا يكون مفضلاً
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (favoritesProvider.isFavorite(
                                                dhikr['text'] ?? '')) {
                                              favoritesProvider.removeFavorite(
                                                  dhikr['text'] ?? '');
                                            } else {
                                              favoritesProvider.addFavorite(
                                                  dhikr['text'] ?? '',
                                                  explanation:
                                                      dhikr['explanation'],
                                                  backgroundImage:
                                                      'images/class_adkar/3.jpg');
                                            }
                                          });
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      IconButton(
                                        icon: Icon(
                                          Icons.share,
                                          color: blue, // اللون الأزرق
                                        ),
                                        onPressed: () {
                                          Share.share(
                                            'النص: ${dhikr['text'] ?? 'نص غير متوفر'} \nالتفسير: ${dhikr['explanation'] ?? 'تفسير غير متوفر'}',
                                            subject: 'مشاركة ذكر',
                                          );
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      IconButton(
                                        icon: Icon(
                                          Icons.copy,
                                          color: blue, // اللون الأزرق
                                        ),
                                        onPressed: () {
                                          Clipboard.setData(
                                            ClipboardData(
                                              text:
                                                  'النص: ${dhikr['text'] ?? 'نص غير متوفر'} \nالتفسير: ${dhikr['explanation'] ?? 'تفسير غير متوفر'}',
                                            ),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'تم نسخ النص إلى الحافظة',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
