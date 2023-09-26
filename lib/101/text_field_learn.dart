import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            buildCounter: (context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            style: TextStyle(color: Colors.red),
            keyboardType: TextInputType.emailAddress, // klavyeye @ sembolü ekler
            autofillHints: const [AutofillHints.email],
            maxLength: 20,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_sharp),
                border: OutlineInputBorder(),
                hintText: "isim",
                labelText: "Kullanidi adi",
                fillColor: Colors.white24,
                filled: true),
          ),
          const TextField(
            maxLength: 20,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle_sharp),
                border: OutlineInputBorder(),
                hintText: "soyisim",
                labelText: "Sifre",
                fillColor: Colors.white24,
                filled: true),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      width: 10.0 * (currentLength ?? 0),
      height: 10,
      color: Colors.green,
      // color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
    );
  }
}
