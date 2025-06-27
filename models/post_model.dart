class Post {
  final String username;
  final String userProfilePic;
  final String postText;
  final String postImage;
  final int likes;
  final int comments;

  Post({
    required this.username,
    required this.userProfilePic,
    required this.postText,
    required this.postImage,
    required this.likes,
    required this.comments,
  });
}
