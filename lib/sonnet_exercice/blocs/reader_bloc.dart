import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

import 'package:rxdart/rxdart.dart';

class ReaderBloc {
  final _dartStream = StreamController<String>();
  final _publishStream = PublishSubject<String>();
  final _behaviorStream = BehaviorSubject<String>();
  final _replayStream = ReplaySubject<String>(maxSize: 5);

  Stream<String> get dartStream => _dartStream.stream.asBroadcastStream();
  Stream<String> get publishStream => _publishStream.stream;
  Stream<String> get behaviorStream => _behaviorStream.stream;
  Stream<String> get replayStream =>
      _replayStream.stream.map((event) => _replayStream.values.join("\n"));

  void startReading() async {
    // var content = await File("")
    //     .openRead()
    //     .transform(utf8.decoder)
    //     .transform(LineSplitter())
    //     .toList();

    for (var i = 1; i <= 30; i++) {
      await Future.delayed(Duration(milliseconds: 4500));
      
      print("$i Optimus ged");

      _dartStream.sink.add("$i Optimus ged");
      _publishStream.add("$i Optimus ged");
      _behaviorStream.add("$i Optimus ged");
      _replayStream.add("$i Optimus ged");

      
    }
  }

  void dispose() {
    _dartStream.close();
    _publishStream.close();
    _behaviorStream.close();
    _replayStream.close();
  }
}
