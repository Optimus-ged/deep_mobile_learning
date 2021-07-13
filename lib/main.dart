import 'package:deep_mobile_learning/blog_post_exercice/view_model/blog_post_vm.dart';
import 'package:deep_mobile_learning/sonnet_exercice/blocs/reader_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'chat_bot_exercise/chat_bot_home_page.dart';


setUpLocator() {
  GetIt.I.registerLazySingleton(() => BlogPostViewModel());
}

void main() {
  setUpLocator();
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => ReaderBloc()),
        Provider(create: (context) => BlogPostViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          // primaryColor: Colors.green,
          // primarySwatch: Colors.green,
        ),
        home: BotHomePage(),
      ),
    ),
  );
}
