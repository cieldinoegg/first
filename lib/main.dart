import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8.0)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('인터넷에서 대충 긁어온 달 사진이에요',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            Text('예쁘긴 하네요 나도 카메라사서 찍어야지',
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ],
        ),
        Padding(padding: EdgeInsets.all(8.0)),
        Icon(Icons.star, color: Colors.orange,),
        Text('41')
      ],
    );

    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Row(
        children: <Widget>[
        Column(children: <Widget>[
          Icon(Icons.call, size: 30),
          Text('call'),
        ],),
          Padding(padding: EdgeInsets.all(18.0)),
        Column(children: <Widget>[
          Icon(Icons.flag, size: 30),
          Text('flag'),
        ],),
          Padding(padding: EdgeInsets.all(18.0)),
        Column(children: <Widget>[
          Icon(Icons.share, size: 30),
          Text('share'),
        ],),
      ],),
    ],);

    var textSection = Container(
      child: Text('예쁜 달입니다. 그렇지 않습니까 여러분? 저는 예쁘다고 생각하는데, '
          '사실 저 이 앱 공부하기 재미없어요 언제까지 이걸 해야하는건지 어휴 귀찮아죽겠네요 하하',
          style: TextStyle(fontSize: 15),
      ) ,
      padding: EdgeInsets.all(20.0)
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network("https://cdnweb01.wikitree.co.kr/webdata/editor/202004/07/img_20200407162305_1f42c686.webp",
              height: 240, width: 800, fit: BoxFit.cover),
          Padding(padding: EdgeInsets.all(8.0)),
          titleSection,
          Padding(padding: EdgeInsets.all(8.0)),
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}