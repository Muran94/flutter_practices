import 'package:flutter/material.dart';

void main() {
  runApp(const TimeLoop());
}

class TimeLoop extends StatelessWidget {
  const TimeLoop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header = Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x00000008),
            spreadRadius: 5.0,
            blurRadius: 25.0,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            'TIME LOOP',
            style: TextStyle(
              color: Color(0xFF76BEB7),
              fontSize: 24.0,
            ),
          ),
          Text(
            'タイマー一覧',
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );

    Widget timerDisplay = Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x00000008),
            spreadRadius: 5.0,
            blurRadius: 25.0,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(24.0),
                child: const Text(
                  'タスクA',
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24.0),
                child: const Text(
                  'タスクB',
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24.0),
                child: const Text(
                  'タスクC',
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  '00:00:00',
                  style: TextStyle(
                    color: Color(0xFF76BEB7),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(24.0),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.blueGrey,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24.0),
                child: const Icon(
                  Icons.stop,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );

    Widget timerList = Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x00000008),
            spreadRadius: 5.0,
            blurRadius: 25.0,
            offset: Offset(10, 10),
          )
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          timerListTile("アウトプット", "00:43:00"),
          timerListTile("インプット", "00:12:00"),
          timerListTile("休憩", "00:04:00"),
          timerListTile("ホウレンソウ", "00:01:00"),
        ],
      ),
    );

    return MaterialApp(
      title: 'TIME LOOP',
      home: Scaffold(
        backgroundColor: const Color(0xFAFBFCFF),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: <Widget>[
              header,
              timerDisplay,
              timerList,
            ],
          ),
        ),
      ),
    );
  }

  Container timerListTile(String timerName, String time) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.drag_handle_outlined,
            color: Colors.blueGrey,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              timerName,
              style: const TextStyle(
                color: Colors.blueGrey,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Text(
            time,
            style: const TextStyle(
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(width: 16.0),
          const Icon(
            Icons.settings_outlined,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
