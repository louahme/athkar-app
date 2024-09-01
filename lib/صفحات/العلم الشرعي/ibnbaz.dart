import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:adkar/homepage.dart';
import 'package:adkar/navbar/favorites_provider.dart';

class Ibnbaz extends StatefulWidget {
  @override
  _IbnbazState createState() => _IbnbazState();
}

class _IbnbazState extends State<Ibnbaz> {
  List<Map<String, String>> _dhikrList = [
    {
      "text": "ابن القيم رحمه الله تعالى",
      "explanation":
          "سبحان الله ؛ في النفس كبر إبليس ، وحسد قابيل ، وعتو عاد ، وطغيان ثمود ، وجرأة نمرود ، واستطالة فرعون ، وبغي قارون ، وقحة هامان."
    },
    {
      "text": "قال بعض السلف",
      "explanation":
          "خلق الله الملائكة عقولاً بلا شهوة ، وخلق البهائم شهوة بلا عقول، وخلق ابن آدم وركب فيه العقل والشهوة ، فمن غلب عقله شهوته التحق بالملائكة ، ومن غلبت شهوته عقله التحق بالبهائم."
    },
    {
      "text": "قال سفيان الثوري",
      "explanation": "ما عالجت شيئاً أشد عليّ من نفسي ، مرة لي ومرة علي."
    },
    {
      "text": "قال مالك بن دينار - رحمه الله",
      "explanation":
          "رحم الله عبداً قال لنفسه : ألستِ صاحبة كذا؟ ألستِ صاحبة كذا؟ ثم ذمها، ثم خطمها، ثم ألزمها كتاب الله تعالى فكان لها قائداً."
    },
    {
      "text": "قال أبو بكر الوراق",
      "explanation":
          "استعن على سيرك إلى الله بترك من شغلك عن الله عز وجل، وليس بشاغل يشغلك عن الله عز وجل كنفسك التي هي بين جنبيك."
    },
    {
      "text": "قال مجاهد",
      "explanation": "من أعزّ نفسه أذل دينه، ومن أذلّ نفسه أعزّ دينه."
    },
    {
      "text": "قال سفيان الثوري",
      "explanation": "الزهد في الدنيا هو الزهد في الناس، وأول ذلك زهدك في نفسك."
    },
    {
      "text": "قال خالد بن معدان",
      "explanation":
          "لا يفقه الرجل كل الفقه حتى يرى الناس في جنب الله أمثال الأباعر، ثم يرجع إلى نفسه فيكون لها أحقر حاقر."
    },
    {
      "text": "قال الحسن",
      "explanation":
          "رحم الله عبداً وقف عند همه، فإن كان لله مضى وإن كان لغيره تأخر."
    },
    {
      "text": "قال بكر بن عبد الله المزني",
      "explanation":
          "لما نظرت إلى أهل عرفات ظننت أنهم قد غُفر لهم، لولا أنني كنت فيهم."
    },
    {
      "text": "قال يونس بن عبيد",
      "explanation":
          "إني لأجد مائة خصلة من خصال الخير، ما أعلم أن في نفسي منها واحدة."
    },
    {
      "text": "قال الحسن",
      "explanation":
          "ما زالت التقوى بالمتقين حتى تركوا كثيراً من الحلال مخافة الحرام."
    },
    {
      "text": "قال أبو يزيد",
      "explanation": "ما زلت أقود نفسي إلى الله وهي تبكي، حتى سقتها وهي تضحك."
    },
    {
      "text": "قال الحسن",
      "explanation": "من علامة إعراض الله عن العبد أن يجعل شغله فيما لا يعنيه."
    },
    {"text": "قال سهل", "explanation": "من اشتغل بالفضول حُرِم الورع."},
    {
      "text": "قال معروف",
      "explanation": "كلام العبد فيما لا يعنيه، خذلان من الله عز وجل."
    },
    {
      "text": "قال يحيى بن معاذ",
      "explanation":
          "القلوب كالقدور تغلي بما فيها، وألسنتها مغارفها، فانظر إلى الرجل حين يتكلم، فإن لسانه يغترف لك مما في قلبه، حلو .. حامض .. عذب .. أجاج .. وغير ذلك، ويبين لك طعم قلبه اغتراف لسانه."
    },
    {
      "text": "قال مالك بن دينار",
      "explanation":
          "إن الأبرار لتغلي قلوبهم بأعمال البر، وإن الفجار تغلي قلوبهم بأعمال الفجور، والله يرى همومكم، فانظروا ما همومكم رحمكم الله."
    },
    {
      "text": "قالت عائشة رضي الله تعالى عنها",
      "explanation":
          "أول بدعة حدثت بعد رسول الله صلى الله عليه وسلم؛ الشبع، إن القوم لما شبعت بطونهم، جمحت بهم نفوسهم إلى الدنيا."
    },
    {
      "text": "قال ابن عباس رضي الله تعالى عنه",
      "explanation": "لا تجالس أهل الأهواء فإن مجالستهم ممرضة للقلب."
    },
    {
      "text": "قال أبو الجوزاء",
      "explanation":
          "لأن أجالس الخنازير، أحب إلي من أن أجالس رجلاً من أهل الأهواء."
    },
    {
      "text": "قال ابن القيم رحمه الله تعالى",
      "explanation":
          "كل ما كان في القرآن من مدح للعبد فهو من ثمرة العلم، وكل ما كان فيه من ذم فهو من ثمرة الجهل."
    },
    {
      "text": "قال الشاطبي رحمه الله",
      "explanation": "آخر الأشياء نزولا من قلوب الصالحين: حب السلطة والتصدر."
    },
    {
      "text": "قال ابن القيم رحمه الله",
      "explanation":
          "ولو لم يكن في العلم إلا القرب من رب العالمين والالتحاق بعالم الملائكة لكفى به شرفاً وفضلاً، فكيف وعزّ الدنيا والآخرة منوط به مشروط بحصوله."
    },
    {
      "text": "قال ابن الأثير",
      "explanation": "إن الشهوة الخفية: حب اطلاع الناس على العمل."
    },
    {"text": "قال بشر بن الحارث", "explanation": "ما اتقى الله من أحب الشهرة."},
    {
      "text": "قال علي رضي الله عنه",
      "explanation": "يهتف العلم بالعمل، فإن أجابه وإلا ارتحل."
    },
    {
      "text": "قال بشر الحافي",
      "explanation": "أدوا زكاة الحديث: فاستعملوا من كل مائتي حديث خمسة أحاديث."
    },
    {
      "text": "قال الحسن",
      "explanation":
          "إياك والتسويف، فإنك بيومك ولست بغدك، فإن يكن غداً لك فكن في غد كما كنت في اليوم، وإن لم يكن لك غد لم تندم على ما فرطت في اليوم."
    },
    {
      "text": "قال محمد بن عبد الباقي",
      "explanation": "ما أعلم أني ضيعت ساعة من عمري في لهو أو لعب."
    },
    {
      "text": "قال الذهبي",
      "explanation":
          "إن العلم ليس بكثرة الرواية، ولكنه نور يقذفه الله في القلب، وشرطه الاتباع، والفرار من الهوى والابتداع."
    },
    {
      "text": "قال ابن عباس رضي الله عنهما",
      "explanation": "العالم الرباني هو الذي يعلم الناس صغار العلم قبل كباره."
    },
    {
      "text": "قال أحد السلف",
      "explanation":
          "إنما العلم مواهب يؤتيه الله من أحب من خلقه، وليس يناله أحد بالحسب، ولو كان لعلة الحسب لكان أولى الناس به أهل بيت النبي صلى الله عليه وسلم."
    },
    {
      "text": "قيل للشعبي رحمه الله",
      "explanation":
          "من أين لك هذا العلم كله؟ قال: بنفي الاعتماد، والسير في البلاد، وصبر كصبر الجماد، وبكور كبكور الغراب."
    },
    {
      "text": "قال الذهبي رحمه الله",
      "explanation":
          "ما خلا مجتمع من التغاير والحسد، إلا ما كان في جانب الأنبياء والرسل عليهم السلام."
    },
    {
      "text": "قال الشافعي رحمه الله",
      "explanation":
          "والله لو علمت أن الماء البارد يثلم من مروءتي شيئاً ما شربت إلا حاراً."
    },
    {
      "text": "قيل لأحمد بن حنبل",
      "explanation": "كيف تعرف الكذابين؟ قال: بمواعيدهم."
    },
    {
      "text": "قال هرم بن حيان",
      "explanation":
          "ما أقبل عبدٌ بقلبه إلى الله، إلا أقبل الله بقلوب المؤمنين إليه حتى يرزقه ودهم."
    }
  ];

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
              color: green,
            ),
            textAlign: TextAlign.center,
          ),
          content: Text(
            'لقد أتممت جميع الأذكار. جزاك الله خيرًا!',
            style: GoogleFonts.notoKufiArabic(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'العودة إلى الصفحة الرئيسية',
                  style: GoogleFonts.notoKufiArabic(fontSize: 16),
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
      appBar: AppBar(
        title: Text(
          'اقوال العلماء',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/8.jpg'),
            fit: BoxFit.cover,
          ),
        ),
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
                            image: DecorationImage(
                              image: AssetImage('images/8.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                child: Center(
                                  child: Text(
                                    dhikr['text']!,
                                    style: GoogleFonts.scheherazadeNew(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
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
                                    dhikr['explanation']!,
                                    style: GoogleFonts.scheherazadeNew(
                                        fontSize: 16,
                                        color: Colors.white70,
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
                                          favoritesProvider.isFavorite(dhikr[
                                                  'text']!) // تحقق من حالة الذكر
                                              ? Icons
                                                  .favorite // رمز القلب الممتلئ
                                              : Icons
                                                  .favorite_border, // رمز القلب الفارغ
                                          color: favoritesProvider
                                                  .isFavorite(dhikr['text']!)
                                              ? Colors
                                                  .red // اللون الأحمر عندما يكون مفضلاً
                                              : Colors
                                                  .white, // اللون الأبيض عندما لا يكون مفضلاً
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
                                          color: Colors.blue,
                                        ),
                                        onPressed: () {
                                          Share.share(
                                            'النص: ${dhikr['text']} \nالتفسير: ${dhikr['explanation']}',
                                            subject: 'مشاركة ذكر',
                                          );
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      IconButton(
                                        icon: Icon(
                                          Icons.copy,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Clipboard.setData(
                                            ClipboardData(
                                              text:
                                                  'النص: ${dhikr['text']} \nالتفسير: ${dhikr['explanation']}',
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
