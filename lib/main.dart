
import 'package:flutter/material.dart';

void main() {
  runApp(const MariamCompassApp());
}

class MariamCompassApp extends StatelessWidget {
  const MariamCompassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'بوصلة مريم للقبلة',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF062A24),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFD8B15E),
          surface: Color(0xFF0D4035),
        ),
      ),
      home: const CompassHome(),
    );
  }
}

class CompassHome extends StatelessWidget {
  const CompassHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D4035),
        centerTitle: true,
        title: const Text(
          'بوصلة مريم',
          style: TextStyle(
            color: Color(0xFFFFDEA0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'رفيقة صلاتك أينما كنتِ',
                style: TextStyle(
                  fontSize: 21,
                  color: Color(0xFFE8C778),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: 290,
                height: 290,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const RadialGradient(
                    colors: [
                      Color(0xFF176052),
                      Color(0xFF031A16),
                    ],
                  ),
                  border: Border.all(
                    color: const Color(0xFFD8B15E),
                    width: 5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 25,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Positioned(
                      top: 18,
                      child: Text(
                        'شمال',
                        style: TextStyle(
                          color: Color(0xFFFFDEA0),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 18,
                      child: Text('جنوب'),
                    ),
                    const Positioned(
                      right: 12,
                      child: Text('شرق'),
                    ),
                    const Positioned(
                      left: 12,
                      child: Text('غرب'),
                    ),
                    const Icon(
                      Icons.navigation,
                      size: 145,
                      color: Color(0xFFD8B15E),
                    ),
                    Container(
                      width: 115,
                      height: 115,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF07362D),
                        border: Border.all(
                          color: const Color(0xFFD8B15E),
                          width: 3,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('🕋',
                              style: TextStyle(fontSize: 28)),
                          Text(
                            'مريم',
                            style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFDEA0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'بوصلة القبلة',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFE8C778),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'اللهم تقبل صلاتنا',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'أهلًا بكِ في بوصلة مريم، '
                  'نسأل الله لكِ صلاةً مقبولة.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
