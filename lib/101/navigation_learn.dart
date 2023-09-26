import 'package:flutter/material.dart';
import 'package:youtube1/101/image_learn.dart';

import 'navigete_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorMenager {
  List<int> selectedItems = [];

  void addSelectedItems(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: ((context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(
                context, NavigationLearnDetail(isOkey: selectedItems.contains(index)));
            if (response is bool) {
              addSelectedItems(index, response);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(context) ? Colors.green : Colors.yellow,
            ),
          ),
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

mixin NavigatorMenager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        settings: const RouteSettings()));
  }
}
