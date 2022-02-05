import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage2(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  bool _check = false;
  int _count = 41;
  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8.0)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '인터넷에서 대충 긁어온 달 사진',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('나도 카메라사서 찍어야지',
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ],
        ),
        Padding(padding: EdgeInsets.all(25.0)),
        IconButton(
          onPressed: _pressedStar,
          icon: (_check ? Icon(Icons.star) : Icon(Icons.star_border)),
          color: Colors.orange,
        ),
        Text('$_count')
      ],
    );

    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.call, size: 30),
                Text('call'),
              ],
            ),
            Padding(padding: EdgeInsets.all(18.0)),
            Column(
              children: <Widget>[
                Icon(Icons.flag, size: 30),
                Text('flag'),
              ],
            ),
            Padding(padding: EdgeInsets.all(18.0)),
            Column(
              children: <Widget>[
                Icon(Icons.share, size: 30),
                Text('share'),
              ],
            ),
          ],
        ),
      ],
    );

    var textSection = Container(
        child: Text(
          '예쁜 달입니다. 그렇지 않습니까 여러분? 저는 예쁘다고 생각하는데, '
          '사실 저 이 앱 공부하기 재미없어요 언제까지 이걸 해야하는건지 어휴 귀찮아',
          style: TextStyle(fontSize: 15),
        ),
        padding: EdgeInsets.all(20.0));

    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
              "https://cdnweb01.wikitree.co.kr/webdata/editor/202004/07/img_20200407162305_1f42c686.webp",
              height: 240,
              width: 800,
              fit: BoxFit.cover),
          Padding(padding: EdgeInsets.all(8.0)),
          titleSection,
          Padding(padding: EdgeInsets.all(8.0)),
          buttonSection,
          textSection,
        ],
      ),
    );
  }

  void _pressedStar() {
    setState(() {
      if (_check) {
        _check = false;
        _count -= 1;
      } else {
        _check = true;
        _count += 1;
      }
    });
  }
}
