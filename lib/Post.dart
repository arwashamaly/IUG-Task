class PostModel {
  String? image;
  String? content;
  User? user;
  bool? isLiked;

  PostModel(Map map) {
    image = map["image"];
    content = map["content"];
    isLiked = map["isLiked"];
    user = User(map["user"]);
  }
}

class User {
  String? imageUrl;
  String? name;

  User(Map map) {
    imageUrl = map["imageUrl"];
    name = map["name"];
  }
}
