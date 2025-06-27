import 'package:flutter/material.dart';
import 'models/post_model.dart';

class HomePage extends StatelessWidget {
  final List<Post> posts = [
    Post(
      username: 'Mohamed Maged',
      userProfilePic: 'assets/images/profile1.jpg',
      postText: 'Palestine.',
      postImage: 'assets/images/post1.jpg',
      likes: 120,
      comments: 30,
    ),
    Post(
      username: 'Faisal Ali',
      userProfilePic: 'assets/images/profile2.jpg',
      postText: 'Palestine.',
      postImage: 'assets/images/post2.jpg',
      likes: 90,
      comments: 25,
    ),
    Post(
      username: 'Abdullah Alaa',
      userProfilePic: 'assets/images/profile3.jpg',
      postText: 'Palestine',
      postImage: 'assets/images/post3.jpg',
      likes: 80,
      comments: 18,
    ),
    Post(
      username: 'Tarek Mohamed',
      userProfilePic: 'assets/images/profile4.jpg',
      postText: 'Palestine',
      postImage: 'assets/images/post4.jpg',
      likes: 100,
      comments: 210,
    ),
    Post(
      username: 'Mahmoud Saad',
      userProfilePic: 'assets/images/profile5.jpg',
      postText: 'Palestine',
      postImage: 'assets/images/post5.jpg',
      likes: 50,
      comments: 60,
    ),
    Post(
      username: 'Amr Khaled',
      userProfilePic: 'assets/images/profile6.jpg',
      postText: 'Palestine',
      postImage: 'assets/images/post1.jpg',
      likes: 18,
      comments: 25,
    ),
    Post(
      username: 'Mohamed Rabea',
      userProfilePic: 'assets/images/profile7.jpg',
      postText: 'Palestine',
      postImage: 'assets/images/post2.jpg',
      likes: 500,
      comments: 980,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(post.userProfilePic),
                ),
                title: Text(post.username),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(post.postText),
              ),
              if (post.postImage.isNotEmpty)
                Image.asset(post.postImage),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${post.likes} likes'),
                    Text('${post.comments} comments'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
