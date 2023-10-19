import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            // yazıyı satıra sıkıştırır
            child: Text(
              "Bm Köles",
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 58, 250, 170),
            height: 500,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                color: const Color.fromARGB(255, 58, 103, 250),
                width: 300,
              ),
              Container(
                color: const Color.fromARGB(255, 58, 250, 90),
                width: 300,
              ),
              Container(
                color: const Color.fromARGB(255, 250, 58, 148),
                width: 300,
              ),
              Container(
                color: const Color.fromARGB(255, 250, 160, 58),
                width: 300,
              ),
            ]),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          FittedBox(
            // yazıyı satıra sıkıştırır
            child: Text(
              "Bm Köles",
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            ),
          ),
          Container(
            color: const Color.fromARGB(
              255,
              58,
              250,
              170,
            ),
            height: 500,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                color: const Color.fromARGB(255, 58, 103, 250),
                width: 300,
              ),
              Container(
                color: const Color.fromARGB(255, 58, 250, 90),
                width: 300,
              ),
              Container(
                color: const Color.fromARGB(255, 250, 58, 148),
                width: 300,
              ),
              Container(
                color: const Color.fromARGB(255, 250, 160, 58),
                width: 300,
              ),
            ]),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const ListDemo(),
        ],
      ),
    );
  }
}

class ListDemo extends StatefulWidget {
  const ListDemo({super.key});

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  @override
  void initState() {
    super.initState();
    print("hello");
  }

  @override
  void dispose() {
    super.dispose();
    print("good bye");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
