import 'package:flutter/material.dart';

class Salat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(title: Text('أركان الصلاة وواجباتها وسننها')),
      body: GestureDetector(
        onScaleUpdate: (ScaleUpdateDetails details) {
          // يمكنك التحكم في التكبير والتصغير هنا
        },
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            SizedBox(height: 16.0),
            _buildSectionTitle('أولا: أركان الصلاة'),
            _buildBulletPoint('القيام في الفرض مع القدرة'),
            _buildBulletPoint('تكبيرة الإحرام'),
            _buildBulletPoint('قراءة الفاتحة'),
            _buildBulletPoint('الركوع'),
            _buildBulletPoint('الرفع من الركوع'),
            _buildBulletPoint('السجود على الأعضاء السبعة'),
            _buildBulletPoint('الرفع من السجود'),
            _buildBulletPoint('الجلسة بين السجدتين'),
            _buildBulletPoint('الطمأنينة في جميع الأركان'),
            _buildBulletPoint('التشهد الأخير'),
            _buildBulletPoint('الجلوس للتشهد الأخير'),
            _buildBulletPoint('الصلاة على النبي صلى الله عليه وسلم'),
            _buildBulletPoint('الترتيب بين أركان الصلاة'),
            _buildBulletPoint('التسليمتان'),
            SizedBox(height: 16.0),
            _buildSectionTitle('ثانيا: واجبات الصلاة'),
            _buildBulletPoint('جميع التكبيرات غير تكبيرة الإحرام'),
            _buildBulletPoint('قول: سبحان ربي العظيم في الركوع'),
            _buildBulletPoint('قول سمع الله لمن حمده للإمام والمنفرد'),
            _buildBulletPoint('قول ربنا ولك الحمد للكل'),
            _buildBulletPoint('قول: سبحان ربي الأعلى في السجود'),
            _buildBulletPoint('قول رب اغفر لي بين السجدتين'),
            _buildBulletPoint('التشهد الأول'),
            _buildBulletPoint('الجلوس للتشهد الأول'),
            SizedBox(height: 16.0),
            _buildSectionTitle('ثالثا: سنن الصلاة: وهي سنن أقوال وأفعال'),
            _buildBulletPoint('رفع اليدين حذو المنكبين أو الأذنين'),
            _buildBulletPoint('وضع اليد اليمنى على اليد اليسرى على الصدر'),
            _buildBulletPoint('النظر إلى موضع السجود'),
            _buildBulletPoint('دعاء الاستفتاح'),
            _buildBulletPoint('التعوذ بالله من الشيطان'),
            _buildBulletPoint('البسملة'),
            _buildBulletPoint('قول آمين بعد قراءة الفاتحة'),
            _buildBulletPoint('قراءة سورة بعد الفاتحة'),
            _buildBulletPoint('الجهر بالقراءة في الصلاة الجهرية'),
            _buildBulletPoint('الإسرار في الصلاة السرية'),
            _buildBulletPoint('السكتة اللطيفة بعد الفراغ من القراءة كلها'),
            _buildBulletPoint(
                'وضع اليدين مفرجتي الأصابع على الركبتين كأنه قابض عليهما'),
            _buildBulletPoint(
                'مد الظهر في الركوع حتى لو صب عليه الماء لاستقر، وجعل الرأس حيال الظهر'),
            _buildBulletPoint('مجافاة اليدين عن الجنبين في الركوع'),
            _buildBulletPoint('ما زاد على التسبيحة الواحدة'),
            _buildBulletPoint(
                'ما زاد على المرة الواحدة في سؤال الله المغفرة بين السجدتين'),
            _buildBulletPoint(
                'قول "ملء السموات وملء الأرض، وملء ما شئت من شيء بعد"'),
            _buildBulletPoint('وضع الركبتين قبل اليدين في السجود'),
            _buildBulletPoint('ضم أصابع اليدين في السجود'),
            _buildBulletPoint('تفريج أصابع الرجلين في السجود'),
            _buildBulletPoint('استقبال القبلة بأطراف أصابع اليدين والرجلين'),
            _buildBulletPoint('مجافاة العضدين عن الجنبين في السجود'),
            _buildBulletPoint(
                'مجافاة البطن عن الفخذين والفخذين عن الساقين والتفريج بين الفخذين'),
            _buildBulletPoint('وضع اليدين حذو المنكبين أو الأذنين في السجود'),
            _buildBulletPoint('ضم القدمين والعقبين ونصبهما في السجود'),
            _buildBulletPoint('الإكثار من الدعاء في السجود'),
            _buildBulletPoint(
                'افتراش الرجل اليسرى ونصب اليمنى في الجلوس بين السجدتين وفي التشهد الأول'),
            _buildBulletPoint(
                'وضع اليد اليمنى على الفخذ اليمنى واليسرى على اليسرى إذا جلس في الصلاة'),
            _buildBulletPoint('وضع الذارعين على الفخذين في التشهد'),
            _buildBulletPoint('قبض خنصر وبنصر اليد اليمنى في التشهد'),
            _buildBulletPoint('جلسة الاستراحة'),
            _buildBulletPoint('التورك في التشهد الثاني'),
            _buildBulletPoint('النظر إلى السبابة عند الإشارة بها'),
            _buildBulletPoint('الصلاة والتبريك على محمد وآل محمد'),
            _buildBulletPoint('الدعاء والتعوذ من أربع بعد التشهد الثاني'),
            _buildBulletPoint('الالتفات يمينا وشمالا في التسليمتين'),
            _buildBulletPoint(
                'نيته في سلامه الخروج من الصلاة، والسلام على الملائكة والحاضرين'),
            SizedBox(height: 16.0),
            _buildSectionTitle('مكروهات الصلاة ومبطلاتها'),
            _buildSectionTitle('أولا: مكروهات الصلاة'),
            _buildBulletPoint('الالتفات لغير حاجة'),
            _buildBulletPoint('رفع البصر إلى السماء'),
            _buildBulletPoint('افتراش الذراعين في السجود'),
            _buildBulletPoint('التخصر'),
            _buildBulletPoint('النظر إلى ما يلهي'),
            _buildBulletPoint('الصلاة إلى ما يشغل'),
            _buildBulletPoint('الإقعاء المذموم'),
            _buildBulletPoint('عبث المصلي بجوارحه'),
            _buildBulletPoint('تشبيك الأصابع'),
            _buildBulletPoint('الصلاة بحضرة الطعام'),
            _buildBulletPoint('مدافعة الأخبثين'),
            _buildBulletPoint('بصاق المصلي أمامه أو عن يمينه في الصلاة'),
            _buildBulletPoint('كشف الشعر أو الثوب'),
            _buildBulletPoint('عقص الرأس في الصلاة'),
            _buildBulletPoint('تغطية الفم في الصلاة'),
            _buildBulletPoint('السدل في الصلاة'),
            _buildBulletPoint('تخصيص مكان من المسجد للصلاة'),
            _buildBulletPoint('الاعتماد على اليد في الجلوس في الصلاة'),
            _buildBulletPoint('التثاؤب'),
            _buildBulletPoint('الركوع قبل أن يصل إلى الصف'),
            _buildBulletPoint('الصلاة في المسجد لمن أكل البصل والثوم'),
            _buildBulletPoint('صلاة النفل عند مغالبة النوم'),
            SizedBox(height: 16.0),
            _buildSectionTitle('ثانيا: مبطلات الصلاة'),
            _buildBulletPoint('الكلام العمد مع الذكر'),
            _buildBulletPoint('الضحك'),
            _buildBulletPoint('الأكل'),
            _buildBulletPoint('الشرب'),
            _buildBulletPoint('انكشاف العورة عمدا'),
            _buildBulletPoint('الانحراف الكثير عن جهة القبلة'),
            _buildBulletPoint('العبث الكثير المتوالي لغير ضرورة'),
            _buildBulletPoint('انتقاض الطهارة'),
          ],
        ),
      ),
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
      fontSize: 16.0,
      fontFamily: 'Amiri',
    );
  }

  TextStyle _sectionTitleStyle() {
    return TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.red,
      fontFamily: 'Amiri',
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: _sectionTitleStyle(),
      textAlign: TextAlign.right,
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: _textStyle(),
              textAlign: TextAlign.right,
            ),
          ),
          Icon(
            Icons.check_circle_outline,
            color: Colors.green,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}
