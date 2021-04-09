import 'package:flutter/material.dart';

class Read extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        body: TabBarView(children: [
          Scaffold(
            body: Center(
              child: Text("tab 1"),
            ),
          ),
          Scaffold(
            body: Center(
              child: Text("tab 2"),
            ),
          ),
          Scaffold(
            body: Center(
              child: Text("tab 3"),
            ),
          ),
          Scaffold(
            body: Center(
              child: Text("tab 4"),
            ),
          ),
        ]),
      ),
    );
  }
}
