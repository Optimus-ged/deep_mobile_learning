import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:rxdart/rxdart.dart';

class ReaderBloc {
  final _dartStream = StreamController<String>();
  final _publishStream = PublishSubject<String>();
  final _behaviorStream = BehaviorSubject<String>();
  final _replayStream = ReplaySubject<String>();

  void dispose() {
    _dartStream.close();
    _publishStream.close();
    _behaviorStream.close();
    _replayStream.close();
  }

  void startReading() async {
    var content = await File("F:\projects\flutter\deep_mobile_learning\assets\monFichier.txt")
        .openRead()
        .transform(utf8.decoder)
        .transform(LineSplitter())
        .toList(); 

    for (String l in content) {
      print("$l");
      await Future.delayed(Duration(seconds: 3));
    }
  }
}
