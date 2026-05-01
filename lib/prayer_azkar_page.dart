import 'package:flutter/material.dart';

class PrayerAzkarPage extends StatelessWidget {
  const PrayerAzkarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA7BBC7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B5D7E),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home_rounded, color: Colors.white, size: 24),
            SizedBox(width: 10),
            Text(
              "أذكار الصلاة",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal',
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildAzkarCard(
                "أستغفر الله (ثلاثاً)، اللهم أنت السلام ومنك السلام، تباركت يا ذا الجلال والإكرام.",
              ),

              _buildAzkarCard(
                "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، اللهم لا مانع لما أعطيت، ولا معطي لما منعت، ولا ينفع ذا الجد منك الجد.",
              ),

              _buildAzkarCard(
                "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، لا حول ولا قوة إلا بالله، لا إله إلا الله، ولا نعبد إلا إياه، له النعمة وله الفضل، وله الثناء الحسن، لا إله إلا الله مخلصين له الدين ولو كره الكافرون.",
              ),

              _buildAzkarCard(
                "سبحان الله (33 مرة)، والحمد لله (33 مرة)، والله أكبر (33 مرة)، ثم تمام المائة: لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.",
              ),

              _buildAzkarCard(
                "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ\n(قُلْ هُوَ اللَّهُ أَحَدٌ * اللَّهُ الصَّمَدُ * لَمْ يَلِدْ وَلَمْ يُولَدْ * وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ)\n\n"
                "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ\n(قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ * مِنْ شَرِّ مَا خَلَقَ * وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ * وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ)\n\n"
                "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ\n(قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَهِ النَّاسِ * مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ)\n\n"
                "• بعد كل صلاة مرة واحدة، وبعد صلاة المغرب والفجر ثلاث مرات.",
              ),

              _buildAzkarCard(
                "أعوذ بالله من الشيطان الرجيم: {اللهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلَا يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ} [عقب كل صلاة].",
              ),

              _buildAzkarCard(
                "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، يُحيي ويُميت وهو على كل شيء قدير.\n(10 مرات بعد صلاة المغرب والصبح).",
              ),

              _buildAzkarCard(
                "اللهم إني أسألك علماً نافعاً، ورزقاً طيباً، وعملاً متقبلاً.\n(بعد السلام من صلاة الفجر).",
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAzkarCard(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: const TextStyle(
          fontSize: 18,
          height: 1.8,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
