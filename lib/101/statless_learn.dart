import 'package:flutter/material.dart';

class StatlessLearnView extends StatelessWidget {
  const StatlessLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(title: "yakup"),
          _empyBox(),
          const TitleTextWidget(title: "yakup"),
          _empyBox(),
          const TitleTextWidget(title: "yakup"),
          _empyBox(),
          const TitleTextWidget(title: "yakup"),
          _empyBox(),
          const _CustomContainer(),
          _empyBox()
        ],
      ),
    );
  }

  SizedBox _empyBox() => const SizedBox(
        height: 10,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.teal),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
