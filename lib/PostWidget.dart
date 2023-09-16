import 'package:flutter/material.dart';
import 'package:iug_task/Post.dart';

class PostWidget extends StatelessWidget {
  PostModel postModel;

  PostWidget(this.postModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  ClipOval(
                      child: Image.network(
                    postModel.user!.imageUrl ?? '',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(postModel.user!.name ?? "")
                ],
              ),
            ),
            Image.network(
              postModel.image ?? '',
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  child: Icon(Icons.error),
                  height: 180,
                  width: double.infinity,
                  color: Colors.grey,
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.favorite,
                    color:
                        (postModel.isLiked ?? false) ? Colors.red : Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(postModel.content ?? ''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
