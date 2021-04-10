import 'package:deep_mobile_learning/sonnet_exercice/blocs/reader_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Read extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var readerBloc = Provider.of<ReaderBloc>(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sonnet Exercise"),
          bottom: TabBar(
            tabs: [
              Text("Stream"),
              Text("Publish"),
              Text("Behavior"),
              Text("Replay"),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: TabBarView(
            children: [
              Scaffold(
                body: tabBody(
                  stream: readerBloc.dartStream,
                  desc: "Standard dart stream controller",
                ),
              ),
              Scaffold(
                body: tabBody(
                  stream: readerBloc.publishStream,
                  desc: "Publish controller",
                ),
              ),
              Scaffold(
                body: tabBody(
                  stream: readerBloc.behaviorStream,
                  desc: "Behavior controller",
                ),
              ),
              Scaffold(
                body: tabBody(
                  stream: readerBloc.replayStream,
                  desc: "Replay controller",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tabBody({Stream<String> stream, String desc}) {
  return ListView(
    children: [
      Text("$desc"),
      Divider(color: Colors.green),
      SizedBox(height: 50),
      StreamBuilder<Object>(
          stream: stream,
          builder: (context, snapshot) {
            return Text(
              snapshot.hasData ? "${snapshot.data}" : "Loading...",
            );
          })
    ],
  );
}
