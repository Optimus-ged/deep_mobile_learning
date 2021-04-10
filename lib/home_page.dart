import 'package:deep_mobile_learning/blog_post_exercice/pages/blog_post_list.dart';
import 'package:deep_mobile_learning/sonnet_exercice/pages/launch.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter deap learning"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _button(
                title: "BlogPost",
                width: _size.width / 2.5,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlogPostList(),
                    ),
                  );
                },
              ),
              _button(title: "Sonnet", width: _size.width / 2.5,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Launch(),
                    ),
                  );
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}

Widget _button({@required String title, double width, VoidCallback ontap}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 100,
      alignment: Alignment.center,
      width: width,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "$title",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
