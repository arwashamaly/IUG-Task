import 'package:flutter/material.dart';
import 'package:iug_task/Post.dart';
import 'package:provider/provider.dart';

import 'PostData.dart';

class PostWidget extends StatefulWidget {
  PostModel postModel;

  PostWidget(this.postModel);

  @override
  State<StatefulWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
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
                    widget.postModel.user!.imageUrl ?? '',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.postModel.user!.name ?? "")
                ],
              ),
            ),
            Image.network(
              widget.postModel.image ?? '',
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
                  InkWell(
                    child: Icon(
                      Icons.favorite,
                      color:
                          widget.postModel.isLiked ? Colors.red : Colors.grey,
                    ),
                    onTap: () {
                      Provider.of<PostData>(context, listen: false)
                          .togglePost(widget.postModel);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(widget.postModel.content ?? ''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
