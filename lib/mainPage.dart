import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/startPlayPage.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: const Text('勝負しようか満治'),
      ),
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
        children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children:[
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
          ),
          Container(
            height: 300,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => startPlayPage()),
              );
            },
            child: const Text('ゲームスタート'),
          ),
        ],
      )),
    );
  }
}
