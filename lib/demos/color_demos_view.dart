// bir ekran olucak
// bu ekranda üç buton ve bunlara basınca renk değişimi
// seçili olan butonda selected icon olsun
import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backGraundColor = Colors.transparent;
  void changeBackGraundColor(Color color) {
    setState(() {
      _backGraundColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    _backGraundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backGraundColor && widget.initialColor != null) {
      changeBackGraundColor(widget.initialColor!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGraundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(onTap: ColorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: "kirmizi"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: "sari"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: "mavi"),
      ]),
    );
  }

  void ColorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackGraundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackGraundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackGraundColor(Colors.blue);
    }
  }
}

enum _MyColors {
  red,
  yellow,
  blue;
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
