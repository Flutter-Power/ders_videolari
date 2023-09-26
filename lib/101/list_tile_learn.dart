import 'package:flutter/material.dart';
import 'package:youtube1/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl = "https://picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: () {},
                title: const RandomImage(),
                subtitle: const Text("Kirikkale bilgisayar mühendisi 3. sinif"),
                minVerticalPadding: 0,
                dense: true,
                leading: Container(
                    height: 120,
                    color: Colors.red,
                    child: const Icon(Icons.book_online)),
                trailing: const Icon(Icons.chevron_right),
              ),
            )
          ],
        ),
      ),
    );
  }
}
