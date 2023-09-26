import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.yellow,
              height: 100,
            ),
          ),
          Positioned(
              bottom: 0,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.brown,
              )),
          Positioned.fill(
              right: 0,
              left: 0,
              top: 100,
              child: Container(
                color: Colors.pink,
              )),
        ],
      ),
    );
  }
}
// ilk yazılan kod en arkada kalır 