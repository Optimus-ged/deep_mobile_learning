import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

import 'package:rxdart/rxdart.dart';

class ReaderBloc {
  final _dartStream = StreamController<String>();
  final _publishStream = PublishSubject<String>();
  final _behaviorStream = BehaviorSubject<String>();
  final _replayStream = ReplaySubject<String>();

  Stream<String> get dartStream => _dartStream.stream;
  Stream<String> get publishStream => _publishStream.stream;
  Stream<String> get behaviorStream => _behaviorStream.stream;
  Stream<String> get replayStream =>
      _replayStream.stream.map((event) => _replayStream.values.join("\n"));

  void startReading() async {
    // var content = await File("./monFichier.txt")
    //     .openRead()
    //     .transform(utf8.decoder)
    //     .transform(LineSplitter())
    //     .toList();

    for (var i = 1; i <= 30; i++) {
      print("$i Optimus ged");
    }
  }

  void dispose() {
    _dartStream.close();
    _publishStream.close();
    _behaviorStream.close();
    _replayStream.close();
  }
}
