import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CenterCircularProgress(),
        ],
      ),
      body: const LinearProgressIndicator(),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      //strokeWidth: 10,  // durduryor döenen şeyi
      //value: 0.8,
      backgroundColor: Colors.red,
    ));
  }
}
