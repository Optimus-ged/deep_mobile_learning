import 'package:deep_mobile_learning/blog_post_exercice/view_model/blog_post_vm.dart';
import 'package:deep_mobile_learning/sonnet_exercice/blocs/reader_bloc.dart';
import 'package:deep_mobile_learning/sonnet_exercice/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

setUpLocator() {
  GetIt.I.registerLazySingleton(() => BlogPostViewModel());
}

void main() {
  setUpLocator();
  runApp(
    Provider(
      create: (context) => ReaderBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
          primarySwatch: Colors.green,
        ),
        home: HomePage(),
      ),
    ),
  );
}
