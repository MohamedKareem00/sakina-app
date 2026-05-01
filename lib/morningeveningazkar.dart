import 'package:flutter/material.dart';

class MorningEveningAzkarpage extends StatefulWidget {
  const MorningEveningAzkarpage({super.key});

  @override
  State<MorningEveningAzkarpage> createState() =>
      _AzkarMorningEveningPageState();
}

class _AzkarMorningEveningPageState extends State<MorningEveningAzkarpage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final Color backgroundColor = const Color(0xFFA7BBC7);
  final Color primaryBlue = const Color(0xFF2B5D7E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryBlue,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            if (_currentPage > 0) {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
              Navigator.of(context).maybePop();
            }
          },
        ),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 24),
            SizedBox(width: 10),
            Text(
              "أذكار الصباح والمساء",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal',
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  _buildPage(_page1),
                  _buildPage(_page2),
                  _buildPage(_page3),
                  _buildPage(_page4),
                ],
              ),
            ),

            if (_currentPage < 3)
              Padding(
                padding: const EdgeInsets.only(
                  right: 30.0,
                  bottom: 30.0,
                  left: 30.0,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: const Icon(Icons.arrow_back, size: 20),
                      label: const Text(
                        "التالي",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: primaryBlue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            else
              const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(List<String> azkar) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: azkar.map((text) => _buildAzkarCard(text)).toList(),
      ),
    );
  }

  Widget _buildAzkarCard(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: const TextStyle(
          fontSize: 18, // تم تكبيره قليلاً ليتناسب مع التشكيل
          height: 1.8,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  final List<String> _page1 = [
    "أَعُوذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيمِ: { اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهما ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ }.",
    "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ: { قُلْ هُوَ اللَّهُ أَحَدٌ * اللَّهُ الصَّمَدُ * لَمْ يَلِدْ وَلَمْ يُولَدْ * وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ }.",
    "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ: { قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ * مِن شَرِّ مَا خَلَقَ * وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ }.",
    "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ: { قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَٰهِ النَّاسِ * مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ }. (ثلاث مرات).",
    "أصبحنا وأصبح الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، ربِّ أسألك خير ما في هذا اليوم وخير ما بعده، وأعوذ بك من شر ما في هذا اليوم وشر ما بعده، رب أعوذ بك من الكسل وسوء الكبر، رب أعوذ بك من عذاب في النار وعذاب في القبر. وإذا أمسى قال ذلك. أيضا: \" أمسينا وأمسى الملك لله \".",
  ];

  final List<String> _page2 = [
    "اللهم بك أصبحنا وبك أمسينا، وبك نحيا وبك نموت وإليك النشور وإذا أمسى فليقل: اللهم بك أمسينا، وبك أصبحنا وبك نحيا وبك نموت وإليك المصير.",
    "اللهم أنت ربي لا إله إلا أنت خلقتني وأنا عبدك وأنا على عهدك ووعدك ما استطعت أعوذ بك من شر ما صنعت أبوء لك بنعمتك علي وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت.",
    "اللهم إني أصبحت أشهدك وأشهد حملة عرشك، وملائكتك وجميع خلقك، أنك أنت الله لا إله إلا أنت وحدك لا شريك لك، وأن محمداً عبدك ورسولك (أربع مرات).",
    "اللهم ما أصبح بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك، فلك الحمد ولك الشكر.",
    "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت. اللهم إني أعوذ بك من الكفر، والفقر، اللهم إني أعوذ بك من عذاب القبر لا إله إلا أنت (ثلاث مرات).",
    "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم (سبع مرات).",
    "اللهم إني أسألك العفو والعافية في الدنيا والآخرة، اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي، اللهم استر عوراتي وآمن روعاتي، اللهم احفظني من بين يدي ومن خلفي وعن يميني وعن شمالي ومن فوقي وأعوذ بعظمتك أن أغتال من تحتي.",
  ];

  final List<String> _page3 = [
    "اللهم عالم الغيب والشهادة، فاطر السموات والأرض، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت أعوذ بك من شر نفسي ومن شر الشيطان وشركه وأن أقترف على نفسي سوءاً أو أجره إلى مسلم.",
    "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم (ثلاث مرات).",
    "رضيت بالله رباً، وبالإسلام ديناً وبمحمد صلى الله عليه وسلم نبياً (ثلاث مرات).",
    "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين.",
    "أصبحنا وأصبح الملك لله رب العالمين، اللهم إني أسألك خير هذا اليوم، فتحه، ونصره، ونوره، وبركته، وهداه، وأعوذ بك من شر ما فيه وشر ما بعده.",
    "أصبحنا على فطرة الإسلام وعلى كلمة الإخلاص، وعلى دين نبينا محمد صلى الله عليه وسلم وعلى ملة أبينا إبراهيم حنيفاً مسلماً وما كان من المشركين.",
    "سبحان الله وبحمده (مائة مرة).",
  ];

  final List<String> _page4 = [
    "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير (عشر مرات أو مرة واحدة عند الكسل).",
    "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير (مائة مرة إذا أصبح).",
    "سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته (ثلاث مرات إذا أصبح).",
    "اللهم إني أسألك علماً نافعاً، ورزقاً طيباً، وعملاً متقبلاً (إذا أصبح).",
    "أستغفر الله وأتوب إليه (مائة مرة في اليوم).",
    "أعوذ بكلمات الله التامات من شر ما خلق (ثلاث مرات إذا أمسى).",
    "اللهم صل وسلم على نبينا محمد (عشر مرات).",
  ];
}
