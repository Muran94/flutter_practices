import 'package:flutter/material.dart';

void main() {
  runApp(const ArticleLayout());
}

class ArticleLayout extends StatelessWidget {
  const ArticleLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget articleImage = Image.asset(
      'images/article_image.png',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );

    Widget articleHeading = Container(
      padding: const EdgeInsets.only(
        top: 32.0,
        right: 32.0,
        bottom: 16.0,
        left: 32.0,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            child: const Text(
              'Flutter × FCMでプッシュ通知を実装する',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.calendar_month,
                  color: Colors.grey[500],
                  size: 18.0,
                ),
              ),
              Text(
                '2022/02/02に公開',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ],
      ),
    );

    Widget articleBody = Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: const Text(
              'はじめに',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'こんにちは、ダイゴです。\n\n'
            'Flutter で Firebase Cloud Messaging を用いた通知の実装をする機会があったので、備忘録として記事にしました。\n\n'
            '本記事では、パッケージのインポート 〜 テスト通知を受け取る までの流れをまとめています。\n'
            'どなたかの参考になれば幸いです。',
            style: TextStyle(fontSize: 16.0),
            softWrap: true,
          ),
          Container(
            margin: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: const Text(
              '1. パッケージのインポート',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'プロジェクトの pubspec.yamlファイルに、任意のfirebase_messagingバージョンを追記し、pub get します。',
            style: TextStyle(fontSize: 16.0),
            softWrap: true,
          ),
          Container(
            margin: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: const Text(
              '2. iOS のセットアップ',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'プロジェクトの pubspec.yamlファイルに、任意のfirebase_messagingバージョンを追記し、pub get します。',
            style: TextStyle(fontSize: 16.0),
            softWrap: true,
          ),
        ],
      ),
    );

    Widget articleShare = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.share,
            color: Colors.blueGrey,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            child: const Text(
              'Share',
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Article Layout',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Article Layout'),
        ),
        body: ListView(
          children: [
            // Article Image
            articleImage,
            // Article Heading
            articleHeading,
            // Article Body
            articleBody,
            // Article Share
            articleShare,
          ],
        ),
      ),
    );
  }
}
