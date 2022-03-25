import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Timer Looking App.',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const TimerList(),
    );
  }
}

class TimerList extends StatefulWidget {
  const TimerList({Key? key}) : super(key: key);

  @override
  State<TimerList> createState() => _TimerListState();
}

class _TimerListState extends State<TimerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Timer Looking App.'),
      ),
      body: ListView(
        children: const [
          TimerListItem(),
          TimerListItem(),
          TimerListItem(),
        ],
      ),
    );
  }
}

class TimerListItem extends StatefulWidget {
  const TimerListItem({Key? key}) : super(key: key);

  @override
  State<TimerListItem> createState() => _TimerListItemState();
}

class _TimerListItemState extends State<TimerListItem> {
  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(wordPair.asPascalCase),
      onTap: _showTimerDisplay,
    );
  }

  void _showTimerDisplay() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Timer'),
            ),
            body: const Center(
              child: Text('20:16'),
            ),
          );
        },
      ),
    );
  }
}
