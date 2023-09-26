import 'package:flutter/cupertino.dart';

import 'Post.dart';

class PostData extends ChangeNotifier {
  List<Map> postsData = [
    {
      "image":
          "https://images.unsplash.com/photo-1682687981974-c5ef2111640c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
      "content": "This is the content of post 1.",
      "isLiked": true,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
        "name": "User 1"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1694159784642-490d23f645a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1436&q=80",
      "content": "Post 2 is here with some content.",
      "isLiked": false,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
        "name": "User 2"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1694843657638-45fade6ba747?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
      "content": "Content of the third post goes here.",
      "isLiked": true,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1476&q=80",
        "name": "User 3"
      }
    },
    {
      "image":
          "https://plus.unsplash.com/premium_photo-1693220266419-dd8fee7408b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1376&q=80",
      "content": "Fourth post content is here.",
      "isLiked": false,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
        "name": "User 4"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1692381449047-e3f18ee19f4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80",
      "content": "This is post number five's content.",
      "isLiked": true,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
        "name": "User 5"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1692346441924-62acf044ee4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      "content": "Content for the sixth post.",
      "isLiked": false,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1376&q=80",
        "name": "User 6"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1682686578023-dc680e7a3aeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      "content": "Seventh post's content goes here.",
      "isLiked": true,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
        "name": "User 7"
      }
    },
    {
      "image":
          "https://images.unsplash.com/photo-1694704238113-313fccb7b1f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1518&q=80",
      "content": "This is post number eight with some content.",
      "isLiked": false,
      "user": {
        "imageUrl":
            "https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1534&q=80",
        "name": "User 8"
      }
    }
  ];

  List<PostModel> _list = []; // Create a private list.

  PostData() {
    // Initialize the list in the constructor.
    _list = convertMapsToPostModel();
  }

  List<PostModel> get list => _list; // Create a getter for the list.

  List<PostModel> convertMapsToPostModel() {
    return postsData.map((e) => PostModel(e)).toList();
  }

  togglePost(PostModel post){
    post.isLiked = !post.isLiked;
    notifyListeners();
  }
}
