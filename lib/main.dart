
import 'package:deep_mobile_learning/blog_post_exercice/view_model/blog_post_vm.dart';
import 'package:deep_mobile_learning/sonnet_exercice/pages/launch.dart';
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
      // When warking on Blogpost exercise
      // home: BlogPostList(),
      
      // When Warking on sonnet Exercise
      home: Launch(),
    ),
  );
}
