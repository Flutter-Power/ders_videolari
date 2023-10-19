import 'package:flutter/material.dart';
import 'package:youtube1/core/random_image.dart';

class StackDemoLearn extends StatelessWidget {
  const StackDemoLearn({super.key});
  final _cardHeight = 50.0;
  final _cardWidth2 = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    bottom: _cardHeight / 2,
                    child: const RandomImage(),
                  ),
                  Positioned(height: _cardHeight, bottom: 0, width: _cardWidth2, child: const CardCustom())
                ],
              )),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(),
      child: Text(
        "Yakup",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
