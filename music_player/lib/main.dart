import 'package:flutter/material.dart';

void main() {
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            'images/geography.jpeg',
            width: 150,
            height: 150,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: const Text(
                      'Geography',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                    child: Column(
                      children: const [
                        Text('by Tom Misch'),
                        Text('アルバム・2018'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 24.0),
                        child: const Icon(Icons.playlist_add),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 24.0),
                        child: const Icon(Icons.download_outlined),
                      ),
                      const Icon(Icons.menu),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Widget buttonsContainer = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: null,
              child: const Text(
                '再生',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          const Expanded(
            child: OutlinedButton(
              onPressed: null,
              child: Text(
                'シャッフル',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('mumusic')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              headerSection,
              buttonsContainer,
              const Songs(),
            ],
          ),
        ),
      ),
    );
  }
}

class Songs extends StatefulWidget {
  const Songs({Key? key}) : super(key: key);

  @override
  _SongsState createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  final _songs = <Song>[];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Song(),
        Song(),
        Song(),
        Song(),
        Song(),
        Song(),
      ],
    );
  }
}

class Song extends StatelessWidget {
  const Song({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const Text(
              '1',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Before Paris',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Tom Misch・2:30',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.more_vert_outlined,
            size: 18.0,
          ),
        ],
      ),
    );
  }
}
