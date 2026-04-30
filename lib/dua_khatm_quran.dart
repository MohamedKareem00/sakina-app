import 'package:flutter/material.dart';

class DuaKhatmQuran extends StatelessWidget {
  const DuaKhatmQuran ({super.key});

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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.menu_book,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(width: 10),
            const Text(
              "دعاء ختم القرآن",
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

      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 40.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(
                        alpha: 0.3,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      "\"اللهم ارحمني بالقرآن واجعله لي إمامًا ونورًا وهدى ورحمة، اللهم ذكرني منه ما نسيت وعلمني منه ما جهلت وارزقني تلاوته آناء الليل وأطراف النهار واجعله لي حجة يا رب العالمين، اللهم إني أسألك موجبات رحمتك وعزائم مغفرتك والسلامة من كل إثم والغنيمة من كل بر والفوز بالجنة والنجاة من النار، اللهم أحسن عاقبتنا في الأمور كلها، وأجرنا من خزي الدنيا وعذاب الآخرة. اللهم اجعل خير عمري آخره وخير عملي خواتمه وخير أيامي يوم ألقاك فيه، اللهم إني أسألك عيشة هنية وميتة سوية ومرداً غير مخز ولا فاضح، اللهم أصلح لي ديني الذي هو عصمة أمري، وأصلح لي دنياي التي فيها معاشي، وأصلح لي آخرتي التي فيها معادي، واجعل الحياة زيادة لي في كل خير واجعل الموت راحة لي من كل شر، اللهم إني أسألك خير المسألة وخير الدعاء وخير النجاح وخير العلم وخير العمل وخير الثواب وخير الحياة وخير الممات وثبتني وثقل موازيني وحقق إيماني وارفع درجتي وتقبل صلاتي واغفر خطيئتي وأسألك العلا من الجنة، اللهم لا تدع لنا ذنبًا إلا غفرته ولا همًا إلا فرجته ولا دينًا إلا قضيته ولا حاجة من حوائج الدنيا والآخرة إلا قضيتها يا أرحم الراحمين، اللهم اقسم لنا من خشيتك ما تحول به بيننا وبين معصيتك ومن طاعتك ما تبلغنا بها جنتك ومن اليقين ما تهون به علينا مصائب الدنيا ومتعنا بأسماعنا وأبصارنا وقوتنا ما أحييتنا واجعله الوارث منا واجعل ثأرنا على من ظلمنا وانصرنا على من عادانا ولا تجعل مصيبتنا في ديننا ولا تجعل الدنيا أكبر همنا ولا مبلغ علمنا ولا تسلط علينا من لا يرحمنا، ربنا آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار وصلى الله على سيدنا ونبينا محمد وعلى آله وأصحابه الأخيار وسلم تسليمًا كثيرًا\".",
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.8,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}