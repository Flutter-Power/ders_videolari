import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:youtube1/202/services/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(
      BaseOptions(baseUrl: _baseUrl),
    );
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post("posts", data: postModel);

    if (response.statusCode == HttpStatus.created) {
      name = "başarili";
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ""),
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(labelText: "Title"),
          ),
          TextField(
            controller: _bodyController,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(labelText: "Body"),
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            autofillHints: const [AutofillHints.creditCardNumber],
            decoration: const InputDecoration(labelText: "UserID"),
          ),
          TextButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty && _bodyController.text.isNotEmpty && _userIdController.text.isNotEmpty) {
                        final model = PostModel(title: _titleController.text, body: _bodyController.text, userId: int.tryParse(_userIdController.text));
                        _addItemService(model);
                      }
                    },
              child: const Text("send"))
        ],
      ),
    );
  }
}
