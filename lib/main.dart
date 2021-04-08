import 'package:flutter/material.dart';

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
