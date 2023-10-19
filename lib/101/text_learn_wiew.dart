import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Yakup";
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Fluttera yutubdan izleyerek başladım $name",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            // satır ikiyi geçerse '...' koyar
            textAlign: TextAlign.right,
            style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.deepOrange,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Fluttera yutubdan izleyerek başladım $name",
            maxLines: 2,
            overflow: TextOverflow.ellipsis, // satır ikiyi geçerse '...' koyar
            textAlign: TextAlign.right,
            style: prjectStyles.welcomeStyle,
          ),
          Text("Fluttera yutubdan izleyerek başladım $name",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              // satır ikiyi geçerse '...' koyar
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.green)),
          Text(userName ?? ""),
          Text(keys.welcome)
        ],
      )),
    );
  }
}

class ProjectKeys {
  final String welcome = "merhaba";
}

class prjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.deepOrange,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}
