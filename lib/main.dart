import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('gameをしようか満治'),
        ),
      body: Center(
        child: Column(
          children: <Widget> [
             _titleArea(),
            _buttonArea()
          ],
        ),

      ),
      ),
    );
  }
}




 Widget _titleArea() {
    return Container(
       margin: EdgeInsets.all(70.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
           Container(
                  child: Text(
                    "〇",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 50 ,color: Color.fromARGB(255, 176, 23, 30) ),
                        
                  ),
                ),
                Container(  // 3.1.2行目
                  child: Text(
                    "✕",
                    style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 32, 17, 126)),
                  ),
                ),
                 Container(  // 3.1.2行目
                  child: Text(
                    "ゲーム",
                    style: TextStyle(fontSize: 50, color: Color.fromARGB(255,0,0,0)),
                  ),
                 ),
        ],
          )    // 1行目
    );
 }



  Widget _buttonArea() {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: ElevatedButton(
            child: Text(
              'ゲームスタート',
              style: TextStyle(fontSize: 20,),
            ),
            onPressed: () {
              print('クリックされました');
            },
            onLongPress: () {
              print('長押しされました');
            }
        )
      );
    
  }