import 'package:flutter/material.dart';
import 'package:youtube1/101/%C4%B1con_leatn.dart';
import 'package:youtube1/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(1);
          },
        ),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            const ImageLearn(),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
            IconLeanView()
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            controller: _tabController,
            tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
          ),
        ),
      ),
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
