import 'package:flutter/material.dart';
import 'color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backGraundColor;
  void changeBackGraundColor(Color color) {
    setState(() {
      _backGraundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (() {
                setState(() {
                  _backGraundColor = Colors.pink;
                });
              }),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: Column(children: [const Spacer(), Expanded(child: ColorDemos(initialColor: _backGraundColor))]),
    );
  }
}
