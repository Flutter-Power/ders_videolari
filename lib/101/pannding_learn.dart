import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: const Color.fromARGB(255, 117, 241, 113),
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
            child: Container(
              color: const Color.fromARGB(255, 241, 113, 198),
              height: 100,
            ),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingVertical,
            child: Container(
              color: const Color.fromARGB(255, 241, 209, 113),
              height: 100,
            ),
          )
        ]),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
}
