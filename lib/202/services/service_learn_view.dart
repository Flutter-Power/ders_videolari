import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:youtube1/202/services/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/ ";

  @override
  void initState() {
    super.initState();
    _dio = Dio(
      BaseOptions(baseUrl: _baseUrl),
    );
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
    if (response.statusCode == HttpStatus.ok) {
      final myDatas = response.data;
      if (myDatas is List) {
        setState(() {
          _items = myDatas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    final response = await _dio.get("posts");
    if (response.statusCode == HttpStatus.ok) {
      final myDatas = response.data;
      if (myDatas is List) {
        setState(() {
          _items = myDatas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(items: _items?[index]);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? items,
  })  : _items = items,
        super(key: key);

  final PostModel? _items;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        title: Text(_items?.title ?? ""),
        subtitle: Text(_items?.body ?? ""),
      ),
    );
  }
}
