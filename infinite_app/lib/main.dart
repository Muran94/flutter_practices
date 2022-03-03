import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  final appName = 'APP LIST';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 29, 29, 29),
          foregroundColor: Colors.white,
        ),
      ),
      home: const AppList(),
    );
  }
}

class AppList extends StatefulWidget {
  const AppList({Key? key}) : super(key: key);

  @override
  _AppListState createState() => _AppListState();
}

class _AppListState extends State<AppList> {
  final _appsShown = <ListTile>[];
  final _apps = [
    {
      "appName": "Adobe Lightroom",
      "logoAssetPath": "images/adobe_lightroom.png",
      "author": "Adobe Inc.",
    },
    {
      "appName": "Adobe Photoshop Elements 2022",
      "logoAssetPath": "images/adobe_photoshop_elements.png",
      "author": "Adobe Inc.",
    },
    {
      "appName": "Mind Node - Mind Map & Outline",
      "logoAssetPath": "images/mind_node.png",
      "author": "IdeasOnCavas GmbH",
    },
    {
      "appName": "Fantastical - Calendar & Tasks",
      "logoAssetPath": "images/fantastical.png",
      "author": "Flexibits Inc.",
    },
    {
      "appName": "Shortshare",
      "logoAssetPath": "images/shortshare.png",
      "author": "Timo Josten",
    },
    {
      "appName": "Planny 6・Day Planner",
      "logoAssetPath": "images/planny_6.png",
      "author": "Kevin Reutter",
    },
    {
      "appName": "Friendly Streaming Browser",
      "logoAssetPath": "images/friendly_streaming_browser.png",
      "author": "Friendly App Studio",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite App'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          final index = i ~/ 2;

          if (index >= _appsShown.length) {
            final _appsToAdd = _apps.map(
              (app) {
                return _buildAppItem(app);
              },
            ).toList();
            _appsShown.addAll(_appsToAdd);
          }

          final appShown = _appsShown[index];

          return appShown;
        },
      ),
    );
  }

  ListTile _buildAppItem(app) {
    String appName = app["appName"];
    String logoAssetPath = app["logoAssetPath"];
    String author = app["author"];

    return ListTile(
      leading: Image.asset(
        logoAssetPath,
        width: 50,
        height: 50,
      ),
      title: Text(appName),
      subtitle: Text(author),
      trailing: const Icon(
        Icons.download,
        color: Colors.blue,
      ),
    );
  }
}
