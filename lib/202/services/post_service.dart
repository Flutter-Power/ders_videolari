import 'dart:io';

import 'package:dio/dio.dart';
import 'package:youtube1/202/services/comment_model.dart';
import 'package:youtube1/202/services/post_model.dart';

abstract class IPostService {
  Future<bool> addItemService(PostModel postModel);
  Future<bool> putItemService(PostModel postModel, int id);
  Future<bool> deleteItemService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<commentModel>?> fetchRelatedCommnetsWithPostId(int postId);
}

class PostService implements IPostService {
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  @override
  Future<bool> addItemService(PostModel postModel) async {
    try {
      final response = await _dio.post(_PostServicePack.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } on DioError catch (error) {
      print(error.message);
    }
    return false;
  }

  @override
  Future<bool> putItemService(PostModel postModel, int id) async {
    try {
      final response = await _dio.put("${_PostServicePack.posts.name}/$id", data: postModel);

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
      print(error.message);
    }
    return false;
  }

  @override
  Future<bool> deleteItemService(int id) async {
    try {
      final response = await _dio.put("${_PostServicePack.posts.name}/$id");

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
      print(error.message);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get(_PostServicePack.posts.name);
      if (response.statusCode == HttpStatus.ok) {
        final myDatas = response.data;
        if (myDatas is List) {
          return myDatas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (error) {
      print(error.message);
    }
    return null;
  }

  @override
  Future<List<commentModel>?> fetchRelatedCommnetsWithPostId(int postId) async {
    try {
      final response = await _dio.get(_PostServicePack.comments.name, queryParameters: {_PostQueryePack.postId.name: postId});
      if (response.statusCode == HttpStatus.ok) {
        final myDatas = response.data;
        if (myDatas is List) {
          return myDatas.map((e) => commentModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (error) {
      print(error.message);
    }
    return null;
  }
}

enum _PostServicePack { posts, comments }

enum _PostQueryePack { postId, comments }
