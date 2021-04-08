import 'package:flutter/material.dart';

class BlogPostModify extends StatelessWidget {
  final _titleEditingController = TextEditingController();
  final _contentEditingController = TextEditingController();
  final _authoEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Edit blog post"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.delete),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            myTextField(
              hint: "Title",
              controller: _titleEditingController,
            ),
            myTextField(
              hint: "Content",
              controller: _contentEditingController,
            ),
            myTextField(
              hint: "Author",
              controller: _authoEditingController,
            ),
            SizedBox(height: 100),
            InkWell(
              splashColor: Colors.green,
              hoverColor: Colors.green,
              onTap: () {
                print("tapeeeeeeee");
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 120),
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget myTextField({TextEditingController controller, @required hint}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorColor: Colors.green,
        decoration: InputDecoration(
          hintText: "$hint",
        ),
      ),
    ),
  );
}
