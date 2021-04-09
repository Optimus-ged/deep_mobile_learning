import 'package:deep_mobile_learning/pages/blog_post_list.dart';
import 'package:deep_mobile_learning/view_model/blog_post_vm.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

setUpLocator() {
  GetIt.I.registerLazySingleton(() => BlogPostViewModel());
}

void main() {
  setUpLocator();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
      ),
      home: BlogPostList(),
    ),
  );
}
