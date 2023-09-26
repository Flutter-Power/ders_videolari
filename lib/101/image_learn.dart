import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String imagePng =
      "https://w7.pngwing.com/pngs/681/756/png-transparent-woman-holding-sword-and-shield-lagertha-vikings-season-2-television-show-shield-maiden-sophie-turner-celebrities-television-fictional-characters-thumbnail.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                ImageItems().lothbrokImage,
                fit: BoxFit.contain,
              )),
          SizedBox(
            width: 200,
            height: 200,
            child: PngImage(name: ImageItems().flokiPathName),
          ),
          SizedBox(
              width: 200,
              height: 200,
              child: Image.network(imagePng,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.abc_outlined))),
        ],
      ),
    );
  }
}

class ImageItems {
  final String ragnarImage = "assets/ragnar.png";
  final String lothbrokImage = "assets/png/lothbrok.png";
  final String flokiPathName = "floki";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => "assets/png/$name.png";
}
