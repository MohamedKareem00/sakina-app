import 'package:flutter/material.dart';

class SebhaPage extends StatefulWidget {
  const SebhaPage({super.key});

  @override
  State<SebhaPage> createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  int counter = 0;

  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
    "استغفر الله",
  ];

  String currentZekr = "سبحان الله";

  void increment() {
    setState(() {
      counter++;

      if (counter == 100) {
        counter = 0;
        azkar.shuffle();
        currentZekr = azkar.first;
      }
    });
  }

  void changeZekr(String zekr) {
    setState(() {
      currentZekr = zekr;
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA7BBC7),

    appBar: AppBar(
  backgroundColor: const Color(0xFF2B5D7E),
  centerTitle: true,
  title: const Text(
    "المسبحة",
    style: TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.bold,
    ),
  ),

  leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context);
    },
  ),

  actions: [
    Builder(
      builder: (context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    ),
  ],
),

      drawer: Drawer(
        backgroundColor: const Color(0xFFA7BBC7),
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("اختار الذكر"),
            ),
            ...azkar.map((zekr) {
              return ListTile(
                title: Text(
                  zekr,
                  textDirection: TextDirection.rtl,
                ),
                onTap: () {
                  changeZekr(zekr);
                  Navigator.pop(context);
                },
              );
            }),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentZekr,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2C4E66),
              ),
            ),

            const SizedBox(height: 25),

            Text(
              "$counter / 100",
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2B5D7E),
              ),
            ),

            const SizedBox(height: 35),

            GestureDetector(
              onTap: increment,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF2B5D7E),
                      Color(0xFF3A7CA5),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "سبّح",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            TextButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Text(
                "إعادة",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF2C4E66),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}