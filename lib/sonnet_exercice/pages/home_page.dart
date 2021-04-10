import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter deap learning"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10),
          Row(
            children: [
              _button(title: "Example 1"),
              _button(title: "Example 2"),
            ],
          )
        ]),
      ),
    );
  }
}

Widget _button({@required String title, VoidCallback ontap}) {
  return InkWell(
    onTap: ontap,
    child: Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          "$title",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
