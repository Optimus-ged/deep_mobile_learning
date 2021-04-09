import 'dart:async';
import 'package:deep_mobile_learning/model/blog_post.dart';

/*
final blogPosts = ;
*/

class BlogPostViewModel {
  StreamController<List<BlogPost>> _blogPostListController =
      StreamController.broadcast();
  Stream<List<BlogPost>> get outBlogPost => _blogPostListController.stream;
  Sink<List<BlogPost>> get _inBlogPost => _blogPostListController.sink;

  List<BlogPost> _blogPost;

  BlogPostViewModel() {
    outBlogPost.listen((data) {
      _blogPost = data;
    });

    Future.delayed(Duration(seconds: 3)).then(
      (value) => _inBlogPost.add(
        [
          new BlogPost(
              id: 1,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 1"),
          new BlogPost(
              id: 2,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 2"),
          new BlogPost(
              id: 3,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 3"),
          new BlogPost(
              id: 4,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 4"),
          new BlogPost(
              id: 5,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 5"),
          new BlogPost(
              id: 6,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 6"),
          new BlogPost(
              id: 7,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 7"),
          new BlogPost(
              id: 8,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 8"),
          new BlogPost(
              id: 9,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 9"),
          new BlogPost(
              id: 10,
              author: "Author",
              content:
                  "author author author author author author author author ",
              publishDate: DateTime.now(),
              title: "Post 10"),
        ],
      ),
    );
  }

  void addBlogPost({BlogPost blogPost}) {
    _blogPost.add(blogPost);
    _inBlogPost.add(_blogPost);
  }
}