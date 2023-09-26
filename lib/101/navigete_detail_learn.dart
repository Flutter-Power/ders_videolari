import 'package:flutter/material.dart';

class NavigationLearnDetail extends StatefulWidget {
  const NavigationLearnDetail({super.key, this.isOkey = false});
  final bool isOkey;

  @override
  State<NavigationLearnDetail> createState() => _NavigationLearnDetailState();
}

class _NavigationLearnDetailState extends State<NavigationLearnDetail> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop(!widget.isOkey);
              },
              icon: Icon(
                Icons.check,
                color: widget.isOkey ? Colors.red : Colors.green,
              ),
              label: widget.isOkey ? const Text("red") : const Text("onayla"))),
    );
  }
}
