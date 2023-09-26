import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Theme.of(context).colorScheme.error,
          child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(
              child: Text("Yakup"),
            ),
          ),
        ),
        const Card(
          color: Color.fromARGB(255, 113, 224, 117),
          margin: EdgeInsets.all(10),
          child: SizedBox(
            width: 300,
            height: 00,
          ),
        ),
        const _CustomCard(
          child: SizedBox(
            height: 100,
            width: 300,
            child: Center(
              child: Text("Yakup"),
            ),
          ),
        )
      ]),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final borderRadius2 = BorderRadius.circular(10);
    return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
      shape: RoundedRectangleBorder(borderRadius: borderRadius2),
    );
  }
}
