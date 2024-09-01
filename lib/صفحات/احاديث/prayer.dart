import 'package:adkar/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import 'package:adkar/navbar/favorites_provider.dart';

class Prayer extends StatefulWidget {
  @override
  _PrayerState createState() => _PrayerState();
}

class _PrayerState extends State<Prayer> {
  List<Map<String, String>> _dhikrList = [
    {"text": "صلُّوا كما رأيتموني أُصلِّي", "explanation": "[رواه البخاري]"},
    {
      "text": "إذا دخل أحدكم المسجد فلْيركع ركعتين قبل أن يجلس",
      "explanation": "[رواه البخاري] "
    },
    {
      "text": "لا تجلسوا على القبور، ولا تُصلُّوا إليها",
      "explanation": "[رواه مسلم]"
    },
    {
      "text": "إذا أقيمت الصلاة، فلا صلاة إلا المكتوبة",
      "explanation": "[رواه مسلم]"
    },
    {"text": "أُمِرتُ أن لا أكُفّ ثوبًا", "explanation": "[رواه مسلم] "},
    {
      "text":
          "أقيموا صفوفكم وتراصُّوا، قال أنس: وكان أحدُنا يلزق منكبه بمنكب صاحبه، وقدمه بقدمه",
      "explanation": "[رواه البخاري]"
    },
    {
      "text":
          "إذا أُقيمت الصلاة فلا تأتوها وأنتم تسعَون، وأتوها وأنتم تمشون، وعليكم السكينة، فما أدركتم فصلّوا، وما فاتكم فأتموا",
      "explanation": "[متفق عليه]"
    },
    {
      "text":
          "اركع تطمئنّ راكعًا، كم ارْفع حتى تعتدلَ قائمًا، كم اسجد حتى تطمئنّ ساجدًا",
      "explanation": "[رواه البخاري]"
    },
    {
      "text": "إذا سجدتَ فضع كفيك، وارفع مِرْفقيك",
      "explanation": "[رواه مسلم]"
    },
    {
      "text": "إني إمامكُم فلا تسبقوني بالركوع والسجود",
      "explanation": "[رواه مسلم]"
    },
    {
      "text":
          "أول ما يُحاسب به العبد يوم القيامة الصلاة فإن صلحت صلح سائر عمله، وإن فسدت فسد سائر عمله",
      "explanation": "[صحيح: رواه الطبراني]"
    },
    {
      "text":
          "مُروا أولادكم بالصلاة وهم أبناء سبع سنين، واضربوهم عليها وهم أبناء عشر سنين، وفَرِّقوا بينهم في المضاجع",
      "explanation": "[رواه أحمد وغيره وحسنه الألباني في صحيح الجامع]"
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
                                child: Center(
                                  child: Text(
                                    dhikr['explanation'] ??
                                        'تفسير غير متوفر', // استخدم قيمة افتراضية في حالة null
                                    style: GoogleFonts.scheherazadeNew(
                                        fontSize: 16,
                                        color: blue, // لون التفسير
                                        fontWeight: FontWeight.w900),
                                  ),
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
