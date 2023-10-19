import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class ScafflodLearnView extends StatelessWidget {
  const ScafflodLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
      ),
      body: const Text("hii"),
      backgroundColor: Colors.amber,
      //extendBody: true,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 150,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 100,
        decoration: ProjectContainerDecaration(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "a"),
            BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined), label: "c"),
          ],
        ),
      ),
    );
  }
}
