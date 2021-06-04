import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: GridView.builder(
      //   itemCount: 200,
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 4,
      //   childAspectRatio: 16 / 9,//顯示比例調整
      // ),
      // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(//固定交叉軸最大尺寸是多少, 對於大畫面的使用者比較友善
      //   maxCrossAxisExtent: 100,
      //   childAspectRatio: 16 / 9,//顯示比例調整
      // ),
      // body: GridView.extent(
      //   maxCrossAxisExtent: 104,
      //   children: [
      //     Icon(Icons.title),
      //     Icon(Icons.person),
      //     Icon(Icons.print),
      //     Icon(Icons.phone),
      //     Icon(Icons.sms),
      //     Icon(Icons.build),
      //   ],
      // ),
      //--------GridView.count---------
      // body: GridView.count(//用GridView.count的方式來固定數量
      //   crossAxisCount: 3,
      //   childAspectRatio: 16/9,
      //   mainAxisSpacing: 2,//主軸方線中間的間隙
      //   crossAxisSpacing: 4,//交叉軸方向的間隙
      //   children: [
      //     Container(child: Icon(Icons.title), color: Colors.blue,),
      //     Container(child: Icon(Icons.person), color: Colors.blue,),
      //     Container(child: Icon(Icons.print), color: Colors.blue,),
      //     Container(child: Icon(Icons.phone), color: Colors.blue,),
      //     Container(child: Icon(Icons.sms), color: Colors.blue,),
      //     Container(child: Icon(Icons.build), color: Colors.blue,),
      //   ],
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 16 / 9,
          mainAxisSpacing: 2, //主軸方線中間的間隙
          crossAxisSpacing: 4, //交叉軸方向的間隙
        ),
        itemBuilder: (_, index) =>
            Container(
              color: Colors.blue[index % 8 * 100],
            ),
      ),
    );
  }
}
