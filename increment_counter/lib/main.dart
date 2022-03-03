import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  final appName = 'Increment Counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: const IncrementCounters(),
      ),
    );
  }
}

class IncrementCounters extends StatelessWidget {
  const IncrementCounters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        IncrementCounter(),
        IncrementCounter(),
        IncrementCounter(),
        IncrementCounter(),
        IncrementCounter(),
      ],
    );
  }
}

class IncrementCounter extends StatefulWidget {
  const IncrementCounter({Key? key}) : super(key: key);

  @override
  _IncrementCounterState createState() => _IncrementCounterState();
}

class _IncrementCounterState extends State<IncrementCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          count.toString(),
        ),
        trailing: const Text(
          'COUNT UP',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        onTap: () {
          setState(() => {count++});
        });
  }
}
