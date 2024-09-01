import 'package:adkar/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import 'package:adkar/navbar/favorites_provider.dart';

class Quraan extends StatefulWidget {
  @override
  _QuraanState createState() => _QuraanState();
}

class _QuraanState extends State<Quraan> {
  List<Map<String, String>> _dhikrList = [
    {
      'text': '{وَثَمُودَ الَّذِينَ جَابُوا الصَّخْرَ بِالْوَادِ}',
      'explanation': 'جابوا: بمعنى قطعوا، وليس أحضروا.',
    },
    {
      'text':
          '{وَأَمَّا الإِنسَانُ إِذَا مَا ابْتَلَاهُ رَبُّهُ فَقَدَرَ عَلَيْهِ رِزْقَهُ}',
      'explanation': 'قدر: أي ضيق عليه، وليس من القدرة والاستطاعة.',
    },
    {
      'text': '{أَجْرٌ غَيْرُ مَمْنُونٍ}',
      'explanation': 'غير ممنون: أي غير مقطوع، ولا تعني بغير منّة أو معايرة.',
    },
    {
      'text': '{فَجَاءَهَا بَأْسُنَا بَيَاتًا أَوْ هُمْ قَائِلُونَ}',
      'explanation': 'قائلون: من وقت القيلولة، وليس من القول.',
    },
    {
      'text': '{فَأُمُّهَا هَاوِيَةٌ}',
      'explanation':
          'أمُّهَا: أي رأسه هاوية بالنار، وليس المقصود الأم الحقيقية التي أنجبته.',
    },
    {
      'text': '{إِنْ تَحْمِلْ عَلَيْهِ يَلْهَثْ}',
      'explanation':
          'تحمل عليه: أي تطرده وتزجره، وليس من حمل الأشياء والأثقال؛ لأن الكلاب لا يُحْمَلُ عليها.',
    },
    {
      'text': '{فَلَمَّا رَآهَا تَهْتَزُّ كَأَنَّهَا جَانٌّ}',
      'explanation': 'الجان: نوع من الحيات سريع الحركة، وليس الجِنّ.',
    },
    {
      'text': '{إِذَا قَوْمُكَ مِنْهُ يَصِدُّونَ}',
      'explanation': 'يصدّون: بكسر الصاد: يضحكون، وليس من الصُّدُود والعزوف.',
    },
    {
      'text':
          '{الَّذِينَ يَظُنُّونَ أَنَّهُمْ مَالِقُو رَبِّهِمْ وَأَنَّهُمْ إِلَيْهِ رَاجِعُونَ}',
      'explanation': 'الظن هنا يعني العلم واليقين، وليس الشك.',
    },
    {
      'text': '{وَقَاسَمَهُمَا إِنِّي لَكُمَا لَمِنَ النَّاصِحِينَ}',
      'explanation': 'قاسمهما: من القَسَم بمعنى الحلف، وليس من القِسْمَة.',
    },
    {
      'text': '{كَأَنْ لَمْ يَغْنَوْا فِيهَا}',
      'explanation': 'يغنوا: أي لم يقيموا فيها، وليس من الغِنَى وكثرة المال.',
    },
    {
      'text': '{أَوْ اَطْرَحُوهُ أَرْضًا}',
      'explanation': 'اطرحوه: أي ألقوه في أرض بعيدة، وليس إيقاعه على الأرض.',
    },
    {
      'text': '{أَيُمْسِكُهُ عَلَى هُونٍ}',
      'explanation': 'هون: أي على هوان وذل، وليس على مهل.',
    },
    {
      'text': '{فَإِذَا وُجِبَتْ جَنَابُهَا}',
      'explanation':
          'وجبت: أي سقطت "جوانب" الإبل بعد نحرها، والوجوب هنا ليس بمعنى الإلزام.',
    },
    {
      'text': '{وَتَتَّخِذُونَ مَصَانِعَ لَعَلَّكُمْ تَخْلُدُونَ}',
      'explanation':
          'المصانع: هنا أي القصور والحصون، وليست المصانع والمعامل المعروفة الآن.',
    },
    {
      'text': '{وَلَقَدْ وَصَّلْنَا لَهُمُ الْقَوْلَ}',
      'explanation':
          'وصّلنا: أي بيّنَا وفصَّلنا القرآن، وليس المراد إيصاله إليهم.',
    },
    {
      'text': '{أَوْ يُزَوِّجْهُمْ ذُكُورًا وَإِنَاثًا}',
      'explanation':
          'يزوجهم: أي يعطيهم النوعين إناثا وذكورا، وليس معناه الزواج أو النكاح.',
    },
    {
      'text': '{وَأَذِنَتْ لِرَبِّهَا وَحَقَّتْ}',
      'explanation': 'أذنت: أي انقادت وخضعت، وليس معناها السماح.',
    },
    {
      'text': '{لَوَّاحَةٌ لِّلْبَشَرِ}',
      'explanation':
          'لواحة: أي محرقة للجلد أي نار جهنم، وليس بمعنى تلوح للناس، وتظهر لهم.',
    },
    {
      'text': '{خَلَقَ الإِنسَانَ مِن صَلْصَالٍ}',
      'explanation': 'الصلصال: الطين اليابس.',
    },
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
                                                      'images/8.jpg');
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
