import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget heroSection = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black26,
            BlendMode.darken,
          ),
          image: AssetImage(
            'images/background-sample.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.only(
        top: 72.0,
        right: 36.0,
        bottom: 72.0,
        left: 36.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'CAFÉ',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 12.0,
                ),
              ),
              Text(
                ' / RESTAURANT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: const Text(
              'Touché',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36.0,
              ),
            ),
          ),
          const Text(
            'A unique café located in the heart of Los Angeles. Always fresh coffee and '
            'biscuits. Open for indoor dining and to-go orders.',
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: const EdgeInsets.only(top: 32.0),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'MAKE RESERVATION',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 1.0,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Simple LP Layout',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple LP Layout'),
        ),
        body: ListView(
          children: [
            heroSection,
          ],
        ),
      ),
    );
  }
}
