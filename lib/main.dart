import 'package:flutter/material.dart';
import 'pages/blog_post_list.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
          primarySwatch: Colors.green,
        ),
        home: BlogPostList(),
      ),
    );


