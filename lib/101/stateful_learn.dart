import 'package:flutter/material.dart';
import 'package:youtube1/product/counter_hello_button.dart';
import 'package:youtube1/product/langue/langue_item.dart';

class StatefulLeaen extends StatefulWidget {
  const StatefulLeaen({super.key});

  @override
  State<StatefulLeaen> createState() => _StatefulLeaenState();
}

class _StatefulLeaenState extends State<StatefulLeaen> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue++;
    } else {
      _countValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LangueItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_deincrementButton(), incrementButton()],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.displayMedium,
          )),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }

  Padding incrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  FloatingActionButton _deincrementButton() {
    print("burda");
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: const Icon(Icons.remove),
    );
  }
}
