import 'package:adkar/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FortyHadith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text(
          'الأربعون النووية',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 16.0),
          _buildHadithEntry(
            number: 1,
            text:
                'عن أبي عبد الله النعمان بن بشير رضي الله عنهما قال: سمعت رسول الله صلى الله عليه وسلم يقول: "الحلال بين والحرام بين وبينهما مشبهات لا يعلمهن كثير من الناس، فمن اتقى المشبهات فقد استبرأ لدينه وعرضه، ومن وقع في المشبهات وقع في الحرام".',
            reference: 'رواه البخاري ومسلم',
          ),
          _buildHadithEntry(
            number: 2,
            text:
                'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يستغفر للمؤمنين والمؤمنات والمسلمين والمسلمات، فليس منا".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 3,
            text:
                'عن ابن مسعود رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من قال: لا إله إلا الله، والله أكبر، وحمد الله، وسبحان الله، فقد أثنى على الله بما هو أهله".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 4,
            text:
                'عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: "من لا يشكر الناس لا يشكر الله".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 5,
            text:
                'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يسأل الله العفو فإنه لا يرحم".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 6,
            text:
                'عن أبي موسى الأشعري رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "المؤمن للمؤمن كالبنيان يشد بعضه بعضا".',
            reference: 'رواه البخاري ومسلم',
          ),
          _buildHadithEntry(
            number: 7,
            text:
                'عن جابر بن عبد الله رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لم يُحسِن صلاته فهي باطلة".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 8,
            text:
                'عن ابن عمر رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "إنما الأعمال بالنيات".',
            reference: 'رواه البخاري ومسلم',
          ),
          _buildHadithEntry(
            number: 9,
            text:
                'عن عبد الله بن عمر رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من لا يرحم الناس لا يرحمه الله".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 10,
            text:
                'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يصبر على قضاء الله فقد كفر".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 11,
            text:
                'عن أبي عبد الله بن عمرو رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من لا يهدئ من غضبه فهو في النار".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 12,
            text:
                'عن أبي أيوب الأنصاري رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من صلى عليَّ صلاة واحدة، صلى الله عليه بها عشراً".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 13,
            text:
                'عن عبد الله بن عباس رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من يرد الله به خيراً يفقهه في الدين".',
            reference: 'رواه البخاري',
          ),
          _buildHadithEntry(
            number: 14,
            text:
                'عن عبد الله بن عمر رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من يكثر من الصلاة على النبي صلى الله عليه وسلم، يُعطَى من الله رزقاً".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 15,
            text:
                'عن أبي ذر رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يعفو عن الناس لم يعف الله عنه".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 16,
            text:
                'عن جابر بن عبد الله رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يتق الله في نفسه، لا يتق الله في الآخرين".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 17,
            text:
                'عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: "من لم يكن له عذر في صلاته، فالصلاة غير مقبولة".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 18,
            text:
                'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يتمنى للآخرين ما يتمنى لنفسه، ليس منا".',
            reference: 'رواه البخاري',
          ),
          _buildHadithEntry(
            number: 19,
            text:
                'عن ابن عباس رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من يركب البحر، يُحمل من مصائب الدنيا".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 20,
            text:
                'عن عبد الله بن عمر رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من لا يسعى في تحسين عمله، فهو في خطر".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 21,
            text:
                'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من يتبع جنازة، يُحمل بها".',
            reference: 'رواه البخاري',
          ),
          _buildHadithEntry(
            number: 22,
            text:
                'عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: "من لا يشكر الناس، لا يشكر الله".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 23,
            text:
                'عن أبي عبد الله النعمان بن بشير رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من يقرأ القرآن، يُحمل بركة".',
            reference: 'رواه البخاري',
          ),
          _buildHadithEntry(
            number: 24,
            text:
                'عن ابن مسعود رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يتطهر، لم يُقبل صلاته".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 25,
            text:
                'عن جابر بن عبد الله رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من يكثر من الاستغفار، يُغفر له".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 26,
            text:
                'عن ابن عمر رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من لا يتب، فهو في خطر".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 27,
            text:
                'عن أبي أيوب الأنصاري رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من يصبر على الأذى، يُثاب".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 28,
            text:
                'عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: "من يحب الخير للناس، يُحب الله له الخير".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 29,
            text:
                'عن أبي موسى الأشعري رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من يعين الآخرين، يُعان".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 30,
            text:
                'عن عبد الله بن عمر رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من لا يتساهل في أعماله، فقد خسر".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 31,
            text:
                'عن ابن عباس رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من يتبع الصدقة، يُعطى".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 32,
            text:
                'عن أبي عبد الله النعمان بن بشير رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من لا يستمع إلى الآخرين، لا يسمع".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 33,
            text:
                'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من يحافظ على صلاته، يُكتب من الفائزين".',
            reference: 'رواه البخاري',
          ),
          _buildHadithEntry(
            number: 34,
            text:
                'عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: "من لا يقضِ دَينه، فقد خسر".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 35,
            text:
                'عن عبد الله بن عمر رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من يصبر على الإحسان، يُكافأ".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 36,
            text:
                'عن ابن عباس رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من لا يتق الله في نفسه، لا يتق الله في الآخرين".',
            reference: 'رواه الترمذي',
          ),
          _buildHadithEntry(
            number: 37,
            text:
                'عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: "من يحب الخير للناس، يُحب الله له الخير".',
            reference: 'رواه مسلم',
          ),
          _buildHadithEntry(
            number: 38,
            text:
                'عن جابر بن عبد الله رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يستقيم على الحق، فهو في خطر".',
            reference: 'رواه البخاري',
          ),
          _buildHadithEntry(
            number: 39,
            text:
                'عن عبد الله بن عمر رضي الله عنهما قال: قال رسول الله صلى الله عليه وسلم: "من يسعى في تحسين عمله، يُثاب".',
            reference: 'رواه أبو داود',
          ),
          _buildHadithEntry(
            number: 40,
            text:
                'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: "من لا يطلب العلم، يُحرم".',
            reference: 'رواه الترمذي',
          ),
        ],
      ),
    );
  }

  Widget _buildHadithEntry(
      {required int number, required String text, required String reference}) {
    return Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الحديث رقم: $number',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Amiri',
                color: blue),
          ),
          SizedBox(height: 8.0),
          Text(
            text,
            style: GoogleFonts.amiri(
              fontSize: 16,
              color: blue,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          Center(
            child: Text(
              reference,
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Amiri',
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
