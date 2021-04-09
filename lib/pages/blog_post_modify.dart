import 'dart:math';
import 'package:deep_mobile_learning/model/blog_post.dart';
import 'package:deep_mobile_learning/view_model/blog_post_vm.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BlogPostModify extends StatelessWidget {
  // Blogpost model
  final BlogPost blogPost;

  // Declaring all the editing controller
  final _titleEditingController = TextEditingController();
  final _contentEditingController = TextEditingController();
  final _authoEditingController = TextEditingController();

  bool get isEditing => blogPost != null;
  BlogPostViewModel get _vm => GetIt.I<BlogPostViewModel>();

  BlogPostModify({this.blogPost}) {
    if (isEditing) {
      _titleEditingController.text = blogPost.title;
      _contentEditingController.text = blogPost.content;
      _authoEditingController.text = blogPost.author;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(isEditing ? "Edit blog post" : "Creating Blog post"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: isEditing
                ? IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _vm.deleteBlogPost(blogPost.id);
                      Navigator.of(context).pop();
                    },
                  )
                : Container(),
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
                final blogPost = BlogPost(
                  id: isEditing ? this.blogPost.id : Random().nextInt(1000),
                  title: "${_titleEditingController.text}",
                  content: "${_contentEditingController.text}",
                  author: "${_authoEditingController.text}",
                  publishDate: DateTime.now(),
                );
                if (isEditing) {
                  // Editing
                  _vm.updateBlogPost(blogPost);
                } else {
                  // Creating
                  _vm.addBlogPost(blogPost);
                }
                Navigator.of(context).pop();
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 120),
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
    padding: const EdgeInsets.only(bottom: 15, left: 30, right: 30),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        cursorColor: Colors.green,
        decoration: InputDecoration.collapsed(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.green,
          hoverColor: Colors.green,
        ),
      ),
    ),
  );
}
