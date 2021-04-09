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
            body: tabBody(desc: "Standard dart stream controller"),
          ),
          Scaffold(
            body: tabBody(desc: "Standard dart stream controller"),
          ),
          Scaffold(
            body: tabBody(desc: "Standard dart stream controller"),
          ),
          Scaffold(
            body: tabBody(desc: "Standard dart stream controller"),
          ),
        ]),
      ),
    );
  }
}

Widget tabBody({String desc}) {
  return ListView(
    children: [
      Text("$desc"),
      Divider(
        color: Colors.green,
      ),
      SizedBox(height: 50),
      Text("Afficher du texte ici")
    ],
  );
}
