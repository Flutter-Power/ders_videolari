import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final title = "food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomWFootButton(
                onPressed: () {},
                title: title,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomWFootButton(
            onPressed: () {},
            title: title,
          ),
        ),
      ]),
    );
  }
}

class _PaddingUtilty {
  final EdgeInsets normalPadding = const EdgeInsets.all(8);
  final EdgeInsets normal2XPadding = const EdgeInsets.all(16);
}

class _ColorsUtility {
  final Color redColor = const Color.fromARGB(255, 184, 32, 21);
  final Color whiteColor = const Color.fromARGB(255, 233, 228, 228);
}

class CustomWFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtilty {
  CustomWFootButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: _ColorsUtility().redColor,
          shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: normalPadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
