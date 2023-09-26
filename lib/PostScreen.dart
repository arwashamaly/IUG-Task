import 'package:flutter/material.dart';
import 'package:iug_task/PostData.dart';
import 'package:iug_task/PostWidget.dart';
import 'package:iug_task/main.dart';
import 'package:provider/provider.dart';

import 'Post.dart';


class PostScreen extends StatefulWidget {
  Function function;

  @override
  State<PostScreen> createState() => _PostScreenState();

  PostScreen(this.function);
}

class _PostScreenState extends State<PostScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My social media app"),
        actions: [
          Switch(
            value: Util.isDark,
            onChanged: (value) {
              Util.isDark = !Util.isDark;
              setState(() {});
              widget.function();
            },
          )
        ],
      ),
      body: PageView(
        children: [
          ListView.builder(
              itemBuilder: (context, index) {
                return PostWidget( Provider.of<PostData>(context).list[index]);
              },
              itemCount: Provider.of<PostData>(context).list.length),
          ListView.builder(
              itemBuilder: (context, index) {
                return PostWidget(Provider.of<PostData>(context).list.where((element) => element.isLiked).toList()[index]);
              },
              itemCount: Provider.of<PostData>(context).list.where((element) => element.isLiked).toList().length),
        ],
      ),
    );
  }
}
