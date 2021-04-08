import 'package:flutter/material.dart';

class BlogPostList extends StatelessWidget {
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
