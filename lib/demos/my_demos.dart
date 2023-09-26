import 'package:flutter/material.dart';

class myDemosLab extends StatefulWidget {
  const myDemosLab({super.key});

  @override
  State<myDemosLab> createState() => _myDemosLabState();
}

class _myDemosLabState extends State<myDemosLab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_sharp),
            ),
          ],
        ),
        body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.white,
            );
          },
          itemBuilder: (context, index) {
            return SizedBox(
              height: 40,
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 380),
                      child: Image.asset(
                        "assets/png/fener.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: 20,
        ));
  }
}
