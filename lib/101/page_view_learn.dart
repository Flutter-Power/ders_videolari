import 'package:flutter/material.dart';
import 'package:youtube1/101/image_learn.dart';
import 'package:youtube1/demos/stack_demo_view.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.8); // ikinci sayfanın önizlemesini gösteriyor
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        FloatingActionButton(
          onPressed: () {
            _pageController.previousPage(duration: _DurationUtilty._durationLow, curve: Curves.linear);
          },
          child: const Icon(Icons.chevron_left),
        ),
        Text(_currentPageIndex.toString()),
        FloatingActionButton(
          onPressed: () {
            _pageController.nextPage(duration: _DurationUtilty._durationLow, curve: Curves.easeInToLinear);
          },
          child: const Icon(Icons.chevron_right),
        ),
      ]),
      appBar: AppBar(),
      body: PageView(
        padEnds: true,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.red,
          ),
          const ImageLearn(),
          const StackDemoLearn()
        ],
      ),
    );
  }
}

class _DurationUtilty {
  static const _durationLow = Duration(seconds: 1);
}
