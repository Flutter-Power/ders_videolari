import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;

  void _updateCounterCustom() {
    setState(() {
      _counterCustom++;
    });
  }

  final String _welcomeTitle = "merhaba ";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _updateCounterCustom, child: Text("$_welcomeTitle $_counterCustom"));
  }
}
