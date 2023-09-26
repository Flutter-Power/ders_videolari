import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarLearnView extends StatelessWidget {
  final String _title = "Welcome learn";

  const AppbarLearnView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.mark_email_read)),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
