import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:adkar/homepage.dart';
import 'package:adkar/navbar/favorites_provider.dart';

class Ahadith extends StatefulWidget {
  @override
  _AhadithState createState() => _AhadithState();
}

class _AhadithState extends State<Ahadith> {
  List<Map<String, String>> _dhikrList = [
    {
      "text":
          "عن عمر بن الخطاب رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(إنما الأعمال بالنيات، وإنما لكل امرئ ما نوى، فمن كانت هجرته إلى الله ورسوله، فهجرته إلى الله ورسوله، ومن كانت هجرته لدنيا يصيبها أو امرأة يتزوجها، فهجرته إلى ما هاجر إليه)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(من صلى علي صلاة واحدة صلى الله عليه عشراً)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(من كذب علي متعمداً فليتبوأ مقعده من النار)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(كل أمتي يدخلون الجنة إلا من أبى) قالوا: يا رسول الله: ومن يأبى؟ قال: (من أطاعني دخل الجنة، ومن عصاني فقد أبى)",
      "explanation": "رواه البخاري"
    },
    {
      "text":
          "عن أنس بن مالك الأنصاري رضي الله عنه أن النبي صلى الله عليه وسلم قال:\n(من رغب عن سنتي فليس مني)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أنس رضي الله عنه عن النبي صلى الله عليه وسلم أنه قال:\n(لا يؤمن أحدكم حتى أكون أحب إليه من والده وولده والناس أجمعين)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(قال الله تعالى: أنا أغنى الشركاء عن الشرك، من عمل عملاً أشرك فيه معي غيري تركته وشركه)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(المؤمن القوي خير وأحب إلى الله من المؤمن الضعيف، وفي كل خير، احرص على ما ينفعك، واستعن بالله ولا تعجز، وإن أصابك شيء فلا تقل: لو أني فعلت كان كذا وكذا، ولكن قل: قدَر الله وما شاء فعل، فإن لو تفتح عمل الشيطان)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه عن النبي صلى الله عليه وسلم قال:\n(الإيمان بضع وستون شعبة، والحياء شعبة من الإيمان)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(إن لله تسعة وتسعين اسما مائة إلا واحدا، من أحصاها دخل الجنة)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه عن النبي صلى الله عليه وسلم قال:\nقال الله عز وجل: (سبقت رحمتي غضبي)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(إن الله يغار وغيرة الله أن يأتي المؤمنُ ما حرم عليه)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أنس بن مالك رضي الله عنه عن النبي صلى الله عليه وسلم قال:\n(لا يؤمن أحدكم حتى يحب لأخيه ما يحب لنفسه)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن عثمان بن عفان رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(خيركم من تعلم القرآن وعلمه)",
      "explanation": "رواه البخاري"
    },
    {
      "text":
          "عن عمر بن الخطاب رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(إن الله يرفع بهذا الكتاب أقواما، ويضع به آخرين)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي موسى الأشعري رضي الله عنه عن النبي صلى الله عليه وسلم قال:\n(تعاهدوا القرآن، فوالذي نفسي بيده لهو أشد تفصيِّا من الإبل في عُقُلها)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن عبدالله بن عمرو رضي الله عنهما أن رسول الله صلى الله عليه وسلم قال:\n(اقرأ القرآن في شهر) قلت: إني أجد قوة حتى قال: (فاقرأه في سبع ولا تزد على ذلك)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن عبدالله بن عمر رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(لا حسد إلا في اثنتين: رجل آتاه الله القرآن فهو يقوم به آناء الليل وآناء النهار، ورجل آتاه الله مالاً فهو ينفقه آناء الليل وآناء النهار)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(لا تجعلوا بيوتكم مقابر، إن الشيطان ينفر من البيت الذي تقرأ فيه سورة البقرة)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي مسعود البدري رضي الله عنه أن النبي صلى الله عليه وسلم قال:\n(من قرأ بالآيتين من آخر سور البقرة في ليلة كفتاه)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي الدرداء رضي الله عنه أن النبي صلى الله عليه وسلم قال:\n(من حفظ عشر آيات من أول سورة الكهف عصم من الدجال)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن معاوية بن أبي سفيان رضي الله عنهما أن النبي صلى الله عليه وسلم قال:\n(من يرد الله به خيرا يفقهه في الدين)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(من سلك طريقاً يلتمس فيه علماً سهَّل الله له به طريقاً إلى الجنة)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه عن النبي صلى الله عليه وسلم قال:\n(اجتنبوا السبع الموبقات)، قالوا: يا رسول الله وما هن؟ قال: (الشرك بالله، والسحر، وقتل النفس التي حرم الله إلا بالحق، وأكل الربا، وأكل مال اليتيم، والتولي يوم الزحف، وقذف المحصنات المؤمنات الغافلات)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن ابن عمر رضي الله عنهما أن رسول الله صلى الله عليه وسلم قال:\n(كل مسكر خمر، وكل مسكر حرام)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي بكرة رضي الله عنه قال: قال النبي صلى الله عليه وسلم:\n(أكبر الكبائر: الإشراك بالله، وعقوق الوالدين، وشهادة الزور)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن عبدالله بن مسعود رضي الله عنه قال: قال النبي صلى الله عليه وسلم:\n(من مات وهو يدعو من دون الله ندا دخل النار)",
      "explanation": "رواه البخاري"
    },
    {
      "text":
          "عن جابر بن عبدالله رضي الله عنهما قال: قال النبي صلى الله عليه وسلم:\n(من مات لا يشرك بالله شيئا دخل الجنة، ومن مات يشرك بالله شيئا دخل النار)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن علي بن أبي طالب رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(لعن الله من ذبح لغير الله، ولعن الله من لعن والديه، ولعن الله من آوى محدثا، ولعن الله من غير منار الأرض)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن جابر رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(إن بين الرجل وبين الشرك والكفر ترك الصلاة)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن بريدة بن الحُصيب رضي الله عنه عن النبي صلى الله عليه وسلم قال:\n(من ترك صلاة العصر حَبِط عملُه)",
      "explanation": "رواه البخاري"
    },
    {
      "text":
          "عن ابن عمر رضي الله عنهما أن رسول الله صلى الله عليه وسلم قال:\n(الذي تفوته صلاة العصر كأنما وُتِر أهلَه ومالَه)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(الصلوات الخمس، والجمعة إلى الجمعة، ورمضان إلى رمضان، مكفرات ما بينهن إذا اجتنبت الكبائر)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن عبدالله بن عمر بن الخطاب رضي الله عنهما عن النبي صلى الله عليه وسلم قال:\n(الظلم ظلمات يوم القيامة)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن عائشة رضي الله عنها أن رسول الله صلى الله عليه وسلم قال:\n(من ظلم قِيد شبر من الأرض طُوِّقه من سبع أرَضِين)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(كل المسلم على المسلم حرام دمه وماله وعرضه)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(أتدرون ما الغيبة؟) قالوا: الله ورسوله أعلم. قال: (ذكرك أخاك بما يكره) قيل: أرأيت إن كان في أخي ما أقول؟ قال: (إن كان فيه ما تقول فقد اغتبته، وإن لم يكن فيه ما تقول فقد بهته)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن عبدالله بن مسعود رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(أول ما يقضى بين الناس يوم القيامة في الدماء)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(من حمل علينا السلاح فليس منا، ومن غشنا فليس منا)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن ثابت بن الضحاك رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(لَعْنُ المؤمن كقتله)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(إياكم والظن، فإن الظن أكذب الحديث، ولا تحسسوا، ولا تجسسوا، ولا تنافسوا، ولا تحاسدوا، ولا تباغضوا، ولا تدابروا، وكونوا عباد الله إخوانا)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(إن العبد ليتكلم بالكلمة، ما يتبين ما فيها، يهوي بها في النار، أبعد ما بين المشرق والمغرب)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن جابر رضي الله عنه أن النبي صلى الله عليه وسلم قال:\n(إن الشيطان قد أيس أن يعبده المصلون في جزيرة العرب، ولكن في التحريش بينهم)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه عن النبي صلى الله عليه وسلم قال:\n(من لا يَرحم لا يُرحم)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن خولة الأنصارية رضي الله عنها قالت: سمعت النبي صلى الله عليه وسلم يقول:\n(إن رجالا يتخوضون في مال الله بغير حق، فلهم النار يوم القيامة)",
      "explanation": "رواه البخاري"
    },
    {
      "text":
          "عن ابن عمر رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(ما يزال الرجل يسأل حتى يأتي يوم القيامة وليس في وجهه مزعة لحم)",
      "explanation": "رواه مسلم"
    },
    {
      "text":
          "عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال:\n(آية المنافق ثلاث: إذا حدث كذب، وإذا اؤتمن خان، وإذا وعد أخلف)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن عبدالله بن مسعود رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم:\n(سباب المسلم فسوق، وقتاله كفر)",
      "explanation": "رواه البخاري ومسلم"
    },
    {
      "text":
          "عن أبي سعيد الخدري رضي الله عنه قال: قال النبي صلى الله عليه وسلم:\n(لا تسبوا أصحابي، فلو أن أحدكم أنفق مثل أحد، ذهبا ما بلغ مد أحدهم، ولا نصيفه)",
      "explanation": "رواه البخاري ومسلم"
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
        title: Text('أحاديث صحيحة'),
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
