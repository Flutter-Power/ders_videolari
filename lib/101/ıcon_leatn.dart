import 'package:flutter/material.dart';

class IconLeanView extends StatelessWidget {
  final IconSizes _iconSizes = IconSizes();
  final IconColors _iconColors = IconColors();

  IconLeanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marabayın"),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context)
                    .colorScheme.background, // themadan alırsak tema rengine göre renk değişir sabit kalmaz
                size: 40,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_add_alt_1_outlined,
                color: _iconColors.governorBay,
                size: _iconSizes.iconBig,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.backspace_outlined,
                color: _iconColors.cardinal,
                size: _iconSizes.iconSmall,
              ))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 30;
  final double iconBig = 50;
}

class IconColors {
  final Color cardinal = const Color(0xffBC1530);
  final Color governorBay = const Color(0xff323FA9);
}
