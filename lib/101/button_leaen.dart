// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last, body_might_complete_normally_nullable, deprecated_member_use

import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Yazili button",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.amberAccent;
                }
              }),
            ),
          ),
          const ElevatedButton(
              onPressed: null, // null verdik tıklanmıyor
              child: Text("arka planli button ")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
          FloatingActionButton(
            onPressed: () {
              // tıkladığında bir yerlere gidip bir şeyler açar
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            child: const Text("button çeşidi"),
          ),
          InkWell(
            onTap: () {},
            child: const Text("sadece yazı"),
          ),
          Container(
            height: 100,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  "Place bid",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ))
        ],
      ),
    );
  }
}
