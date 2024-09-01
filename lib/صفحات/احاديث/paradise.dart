import 'package:adkar/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import 'package:adkar/navbar/favorites_provider.dart';

class Paradise extends StatefulWidget {
  @override
  _ParadiseState createState() => _ParadiseState();
}

class _ParadiseState extends State<Paradise> {
  List<Map<String, String>> _dhikrList = [
    {
      "text":
          "عن أبي هريرة رضي الله تعالى عنه، أنَّ رسولَ الله صلى الله عليه وسلم قال: «لن يُدخِلَ أحدًا عملُهُ الجنَّةَ»، قالوا: ولا أنتَ يا رسولَ اللَّهِ؟ قالَ: «لا، ولا أنا، إلَّا أن يتغمَّدَنِيَ اللَّهُ بِفَضلٍ ورَحمةٍ، فسدِّدوا وقارِبوا، ولا يَتمَنَّيَنَّ أحدُكمُ الموتَ: إمَّا مُحسِنًا فلعلَّهُ أن يزدادَ خَيرًا، وإمَّا مُسيئًا فلعلَّهُ أن يَستَعتِبَ»",
      "explanation": "رواه البخاري"
    },
    {
      "text":
          "عن أبي هُرَيْرَةَ رضي الله تعالى عنه قال: قَالَ رَسُولُ اللهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: «مَنْ خَافَ أَدْلَجَ، وَمَنْ أَدْلَجَ بَلَغَ الْمَنْزِلَ، أَلاَ إِنَّ سِلْعَةَ اللهِ غَالِيَةٌ، أَلاَ إِنَّ سِلْعَةَ اللهِ الجَنَّةُ»",
      "explanation":
          "قال الترمذي: \"هَذَا حَدِيثٌ حَسَنٌ غَرِيبٌ\"، وصحّحه الألباني"
    },
    {
      "text":
          "عن أنس رضي الله تعالى عنه قال: قال رسول الله صلى الله عليه وسلم: «أنا أكثر الناس تبعًا يوم القيامة، وأنا أول من يقرع باب الجنة»",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله تعالى عنه قال: قال رسول الله صلى الله عليه وسلم: «نحن السابقون الأولون يوم القيامة بيد أنهم أوتوا الكتاب من قبلنا، وأوتيناه من بعدهم»",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "في مسند الإمام أحمد عَنْ أُمِّ سَلَمَةَ رضي الله تعالى عنها قَالَتْ: \"قُلْتُ: يَا رَسُولَ اللَّهِ، مَا لَنَا لا نُذْكَرُ فِي الْقُرْآنِ كَمَا يُذْكَرُ الرِّجَالُ؟ قَالَتْ فَلَمْ يَرُعْنِي مِنْهُ يَوْمًا إِلَّا وَنِدَاؤُهُ عَلَى الْمِنْبَرِ؛ «يَا أَيُّهَا النَّاسُ..» قَالَتْ: وَأَنَا أُسَرِّحُ رَأْسِي، فَلَفَفْتُ شَعْرِي ثُمَّ دَنَوْتُ مِنَ الْبَابِ فَجَعَلْتُ سَمْعِي عِنْدَ الْجَرِيدِ، فَسَمِعْتُهُ يَقُولُ: «إِنَّ اللَّهَ عَزَّ وَجَلَّ يَقُولُ: {إِنَّ الْمُسْلِمِينَ وَالْمُسْلِمَاتِ وَالْمُؤْمِنِينَ وَالْمُؤْمِنَاتِ وَالْقَانِتِينَ وَالْقَانِتَاتِ وَالصَّادِقِينَ وَالصَّادِقَاتِ وَالصَّابِرِينَ وَالصَّابِرَاتِ وَالْخَاشِعِينَ وَالْخَاشِعَاتِ وَالْمُتَصَدِّقِينَ وَالْمُتَصَدِّقَاتِ وَالصَّائِمِينَ وَالصَّائِمَاتِ وَالْحَافِظِينَ فُرُوجَهُمْ وَالْحَافِظَاتِ وَالذَّاكِرِينَ اللَّهَ كَثِيرًا وَالذَّاكِرَاتِ أَعَدَّ اللَّهُ لَهُمْ مَغْفِرَةً وَأَجْرًا عَظِيمًا}[الأحزاب:35]»",
      "explanation": ""
    },
    {
      "text":
          "عن أبي هريرة رضي الله تعالى عنه قال: قال رسول الله صلى الله عليه وسلم: «إن في الجنة شجرة يستظل الراكب في ظلها مائة سنة واقرؤوا إن شئتم: {وَظِلٍّ مَمْدُودٍ}، ولقاب قوس أحدكم من الجنة خير مما طلعت عليه الشمس أو تغرب»",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي سعيد الخدري رضي الله تعالى عنه: أن ابن صياد سأل النبي صلى الله عليه وسلم عن تربة الجنة فقال: «دُرمُكٌ بيضاء مسك خالص»",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أنس بن مالك عن النبي عليه الصلاة والسلام قال: «أُدخِلت الجنة فإذا فيها جنابذ اللؤلؤ وإذا ترابها المسك»",
      "explanation": "البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله تعالى عنه قال: قال رسول الله صلى الله عليه وسلم: «من يدخل الجنة ينعم، لا يبأس، لا تبلى ثيابه، ولا يفنى شبابه»",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي سعيد الخدري رضي الله تعالى عنه أن رسول الله صلى الله عليه وسلم قال: «إن الله عز وجل يقول لأهل الجنة: يا أهل الجنة. فيقولون: لبيك ربنا وسعديك والخير في يديك. فيقول: هل رضيتم؟ فيقولون: وما لنا لا نرضى يا ربنا وقد أعطيتنا ما لم تعط أحدًا من خلقك؟ فيقول: ألا أعطيكم أفضل من ذلك؟ فيقولون: يا رب! وأي شيء أفضل من ذلك؟ فيقول: أحل عليكم رضواني فلا أسخط عليكم بعده أبدًا»",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي سعيد الخدري رضي الله تعالى عنه أن رسول الله صلى الله عليه وسلم قال: «إن أهل الجنة ليتراءون أهل الغرف من فوقهم كما تتراءون الكوكب الدري الغائر من الأفق من المشرق أو المغرب لتفاضل ما بينهم». قالوا: يا رسول الله، تلك منازل الأنبياء لا يبلغها غيرهم؟ قال: «بلى والذي نفسي بيده، رجال آمنوا بالله وصدقوا المرسلين»",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله تعالى عنه، عن النبي صلى الله عليه وسلم قال: «ينادي مناد إن لكم أن تصحوا فلا تسقموا أبدًا، وإن لكم أن تحيوا فلا تموتوا أبدًا، وإن لكم أن تشبوا فلا تهرموا أبدًا، وإن لكم أن تنعموا فلا تبأسوا أبدًا، فذلك قوله عز وجل: {وَنُودُوا أَنْ تِلْكُمُ الجَنَّةُ أُورِثْتُمُوهَا بِمَا كُنْتُمْ تَعْمَلُونَ}»",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن عمران بن حصين عن النبي صلى الله عليه وسلم قال: «اطلعت في الجنة فرأيت أكثر أهلها الفقراء، واطلعت في النار فرأيت أكثر أهلها النساء»",
      "explanation": "رواه البخاري"
    },
    {
      "text":
          "عن عبد الله بن مسعود رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: «إني لأعلم آخر أهل النار خروجًا منها، وآخر أهل الجنة دخولًا الجنة: رجل يخرج من النار حبوًا، فيقول الله له: اذهب فادخل الجنة فيأتيها، فيخيل إليه أنها ملأى، فيرجع فيقول: يا رب، وجدتها ملأى، فيقول الله عز وجل: اذهب فادخل الجنة، فيأتيها فيخيل إليه أنها ملأى، فيرجع فيقول: يا رب، وجدتها ملأى، فيقول الله عز وجل: اذهب فادخل الجنة، فيأتيها، فيخيل إليه أنها ملأى، فيرجع فيقول: يا رب، وجدتها ملأى، فيقول الله عز وجل: اذهب فادخل الجنة، فيأتيها، فإذا هي قد امتلأت، ثم يقول الله: ما لك لا تطلب؟ فيقول: يا رب، لأني أريد أن أكون فيها، فيقول الله: إذا كان أرحم منك. قال: فيُدخل الجنة، ثم يقول الله: ما لك لا تطلب؟ فيقول: يا رب، لأني أريد أن أكون فيها، فيقول الله: إذا كان أرحم منك، فيدخل الجنة، ثم يقول الله: ما لك لا تطلب؟ فيقول: يا رب، لأني أريد أن أكون فيها، فيقول الله: إذا كان أرحم منك»",
      "explanation": "رواه مسلم"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أحاديث عن الجنة',
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
                                                      'images/paradise.jpg');
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
