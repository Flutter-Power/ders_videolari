import 'package:flutter/material.dart';

class ColoumnLowLearn extends StatelessWidget {
  const ColoumnLowLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Row(children: [
                Expanded(
                  child: Container(
                    color: Colors.indigo,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(185, 45, 250, 87),
                  ),
                )
              ])),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1, // flexlerin toplamı on olmalı
            child: Container(color: const Color.fromARGB(255, 240, 236, 47)),
          ), // araya boşluk attık
          const Expanded(
            flex: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // yanlamasına arasına boşluık
                crossAxisAlignment: CrossAxisAlignment.center, // uzunlamasına araya boşluk
                //mainAxisSize:MainAxisSize.min, // sadece yazıldığı alan kadarını alır
                children: [Text("yakup"), Text("ÖZGEN"), Text("213255039")]),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.purple),
          ),
          const SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(children: [
              Expanded(child: Text("Zeynepgül")),
              Expanded(child: Text("SAKAOĞLU")),
              Expanded(child: Text("213255018")),
            ]),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
