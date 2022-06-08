import  'package:flutter/material.dart';

class startPlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: const Text('○×ゲーム'),
        ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
            },
        child: const Text('ゲームセット'),
        ),
      ),
    );    
  }
}