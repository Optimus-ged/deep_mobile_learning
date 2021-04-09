import 'package:deep_mobile_learning/model/blog_post.dart';
import 'package:deep_mobile_learning/view_model/blog_post_vm.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'blog_post_modify.dart';

class BlogPostList extends StatelessWidget {
  BlogPostViewModel get _vm => GetIt.I<BlogPostViewModel>();

  String formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: StreamBuilder<List<BlogPost>>(
          stream: _vm.outBlogPost,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 0.5,
                ),
              );
            }
            final blogPosts = snapshot.data;
            return ListView.builder(
              itemCount: blogPosts.length,
              itemBuilder: (context, index) {
                final blogPost = blogPosts[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => BlogPostModify(blogPost: blogPost,),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(0),
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
            );
          }),
    );
  }
}
