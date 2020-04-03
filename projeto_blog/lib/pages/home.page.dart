import 'package:flutter/material.dart';
import 'package:projeto_blog/models/post.model.dart';
import 'package:projeto_blog/repositories/post.repository.dart';

import 'details.page.dart';

class HomePage extends StatelessWidget {
  var repository = new PostRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog do Bruno"),
      ),
      
      
      body: FutureBuilder(
        future: repository.getAll(),
        builder: (ctx, snp) {
          if (snp.hasData) {
            List<Post> posts = snp.data;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (ctx, i) {
                return ListTile(
                  title: Text(posts[i].title),
                  subtitle: Text(posts[i].author.name),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          tag: posts[i].meta.url,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
   