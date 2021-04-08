import 'package:flutter/material.dart';
import 'blog_post_modify.dart';

class BlogPostList extends StatelessWidget {
  final blogPosts = [
    new BlogPost(
        id: 1,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 1"),
    new BlogPost(
        id: 2,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 2"),
    new BlogPost(
        id: 3,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 3"),
    new BlogPost(
        id: 4,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 4"),
    new BlogPost(
        id: 5,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 5"),
    new BlogPost(
        id: 6,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 6"),
    new BlogPost(
        id: 7,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 7"),
    new BlogPost(
        id: 8,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 8"),
    new BlogPost(
        id: 9,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 9"),
    new BlogPost(
        id: 10,
        author: "Author",
        content: "author author author author author author author author ",
        publishDate: DateTime.now(),
        title: "Post 10"),
  ];
  String formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BlogPots"),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => BlogPostModify(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: blogPosts.length,
        itemBuilder: (context, index) {
          final blogPost = blogPosts[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BlogPostModify(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(16),
                child: ListTile(
                  title: Text(
                    "${blogPost.title}",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                    ),
                  ),
                  subtitle: Text(
                    "${formatDate(blogPost.publishDate)}",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
