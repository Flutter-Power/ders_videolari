import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube1/101/image_learn.dart';

class NotDemosView extends StatelessWidget {
  final title = "Floki";
  final subtitle = "Gemi ustasi. Tanrilarina aşiri bağli. Kafadan kirik";
  final buttonTextElevation = "Not yazin";
  final buttonTextText = "Not hakkinda";
  const NotDemosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: const Color.fromARGB(255, 246, 248, 246),
      body: Padding(
          padding: PaddingItems.horizontalPadding,
          child: Column(children: [
            PngImage(name: ImageItems().flokiPathName),
            TitleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: SubtitleWidget(
                subtitlle: subtitle,
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeights.buttonNormalHeights,
                    child: Center(
                        child: Text(
                      buttonTextElevation,
                      style: Theme.of(context).textTheme.headlineMedium,
                    )))),
            TextButton(onPressed: () {}, child: Text(buttonTextText)),
            const SizedBox(
              height: 50,
            )
          ])),
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({Key? key, this.textAlign = TextAlign.center, required this.subtitlle}) : super(key: key);
  final TextAlign textAlign;
  final String subtitlle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subtitlle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeights = 50;
}
