import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:adkar/homepage.dart';
import 'package:adkar/navbar/favorites_provider.dart';

class salatekPage extends StatefulWidget {
  @override
  _salatekPageState createState() => _salatekPageState();
}

class _salatekPageState extends State<salatekPage> {
  List<Map<String, dynamic>> _dhikrList = [
    {
      'text': 'اللهم أنت السلام ومنك السلام تباركت يا ذا الجلال والإكرام',
      'count': 1,
      'completed': false,
    },
    {
      'text':
          'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير، اللهم لا مانع لما أعطيت، ولا معطي لما منعت، ولا ينفع ذا الجد منك الجد',
      'count': 1,
      'completed': false,
    },
    {
      'text':
          'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير، لا حول ولا قوة إلا بالله، لا إله إلا الله، ولا نعبد إلا إياه، له النعمة وله الفضل، وله الثناء الحسن، لا إله إلا الله مخلصين له الدين ولو كره الكافرون',
      'count': 1,
      'completed': false,
    },
    {
      'text': 'سبحان الله',
      'count': 33,
      'completed': false,
    },
    {
      'text': 'الحمد لله',
      'count': 33,
      'completed': false,
    },
    {
      'text': 'الله أكبر',
      'count': 33,
      'completed': false,
    },
    {
      'text':
          'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير',
      'count': 1,
      'completed': false,
    },
    {
      'text':
          'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.',
      'count': 3,
      'completed': false,
    },
    {
      'text':
          'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.',
      'count': 3,
      'completed': false,
    },
    {
      'text':
          'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.',
      'count': 3,
      'completed': false,
    },
    {
      'text':
          'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
      'count': 1,
      'completed': false,
    },
    {
      'text': 'اللَّهُمَّ أَجِرْنِي مِنْ النَّار',
      'count': 7,
      'completed': false,
    },
    {
      'text':
          'اللَّهُمَّ أَسْأَلُكَ عِلْمَاً نَافِعَاً وَرِزْقَاً طَيِّبَاً وَعَمَلَاً مُتَقَبَّلَاً',
      'count': 1,
      'completed': false,
    },
    {
      'text':
          'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ',
      'count': 1,
      'completed': false,
    },
  ];

  void _toggleCompletion(int index) {
    setState(() {
      if (_dhikrList[index]['count'] > 0) {
        _dhikrList[index]['count']--;
      }
      if (_dhikrList[index]['count'] == 0) {
        _dhikrList.removeAt(index);
        if (_dhikrList.isEmpty) {
          _showCompletionDialog();
        }
      }
    });
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'بارك الله فيك',
            style: GoogleFonts.scheherazadeNew(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: blue,
            ),
            textAlign: TextAlign.center,
          ),
          content: Text(
            'لقد أتممت جميع الأذكار',
            style: GoogleFonts.scheherazadeNew(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: blue, // لون الخلفية للأزرار
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'العودة إلى الصفحة الرئيسية',
                  style: GoogleFonts.scheherazadeNew(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        title: Text(' أذكار الصلاة'),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: _dhikrList.length,
            itemBuilder: (context, index) {
              final dhikr = _dhikrList[index];

              final currentCount = dhikr['count'];
              final maxCount = dhikr['count'] == 100 ? 100 : dhikr['count'];
              final progressValue = (maxCount - currentCount) / maxCount;

              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 375),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        setState(() {
                          _dhikrList.removeAt(index);
                          if (_dhikrList.isEmpty) {
                            _showCompletionDialog();
                          }
                        });
                      },
                      background: Container(color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow[50],
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
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 20,
                                ),
                                child: ListTile(
                                  title: Text(
                                    dhikr['text'],
                                    style: GoogleFonts.amiri(
                                        fontSize: 19,
                                        color: blue,
                                        fontWeight: FontWeight.w900),
                                    textAlign: TextAlign.center,
                                  ),
                                  tileColor: Colors.white.withOpacity(0.7),
                                  onTap: () => _toggleCompletion(index),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () => _toggleCompletion(index),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          favoritesProvider.isFavorite(dhikr[
                                                  'text']!) // تحقق من حالة الذكر
                                              ? Icons
                                                  .favorite // رمز القلب الممتلئ
                                              : Icons
                                                  .favorite_border, // رمز القلب الفارغ
                                          color: favoritesProvider
                                                  .isFavorite(dhikr['text']!)
                                              ? blue // اللون الأحمر عندما يكون مفضلاً
                                              : blue, // اللون الأسود عندما لا يكون مفضلاً
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (favoritesProvider
                                                .isFavorite(dhikr['text']!)) {
                                              favoritesProvider.removeFavorite(
                                                  dhikr['text']!);
                                            } else {
                                              favoritesProvider.addFavorite(
                                                  dhikr['text']!,
                                                  explanation: dhikr[
                                                      'explanation'], // يمكن أن يكون null
                                                  backgroundImage:
                                                      'images/class_adkar/3.jpg' // يمكن أن يكون null
                                                  );
                                            }
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircularPercentIndicator(
                                        radius: 30.0,
                                        lineWidth: 5.0,
                                        percent: progressValue,
                                        center: Text(
                                          '${currentCount}',
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: blue),
                                          textAlign: TextAlign.center,
                                        ),
                                        progressColor: blue,
                                        backgroundColor: blue,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.copy, color: blue),
                                        onPressed: () {
                                          Clipboard.setData(ClipboardData(
                                              text: dhikr['text']));
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                                content: Text(
                                                    'تم نسخه إلى الحافظة')),
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
