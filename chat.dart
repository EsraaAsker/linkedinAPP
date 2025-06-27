import 'package:flutter/material.dart';
import 'models/chat_model.dart';
import 'chat_detail.dart';

class ChatPage extends StatelessWidget {
  final List<Chat> chats = [
    Chat(
      username: 'Mohamed Maged',
      userProfilePic: 'assets/images/profile1.jpg',
      lastMessage: 'Are we still on for lunch?',
      timeAgo: '1m ago',
    ),
    Chat(
      username: 'Faisal Ali',
      userProfilePic: 'assets/images/profile2.jpg',
      lastMessage: 'Are we still on for lunch?',
      timeAgo: '10m ago',
    ),
    Chat(
      username: 'Abdullah Alaa',
      userProfilePic: 'assets/images/profile3.jpg',
      lastMessage: 'Are we still on for lunch?',
      timeAgo: '15m ago',
    ),
    Chat(
      username: 'Tarek Mohamed',
      userProfilePic: 'assets/images/profile4.jpg',
      lastMessage: 'Are we still on for lunch?',
      timeAgo: '20m ago',
    ),
    Chat(
      username: 'Mahmoud Saad',
      userProfilePic: 'assets/images/profile5.jpg',
      lastMessage: 'Are we still on for lunch?',
      timeAgo: '38m ago',
    ),
    Chat(
      username: 'Amr Khaled',
      userProfilePic: 'assets/images/profile6.jpg',
      lastMessage: 'Are we still on for lunch?',
      timeAgo: '46m ago',
    ),
    Chat(
      username: 'Mohamed Rabea',
      userProfilePic: 'assets/images/profile7.jpg',
      lastMessage: 'Are we still on for lunch?',
      timeAgo: '54m ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chat.userProfilePic),
          ),
          title: Text(chat.username),
          subtitle: Text(chat.lastMessage),
          trailing: Text(chat.timeAgo),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatDetailPage(
                  username: chat.username,
                  userProfilePic: chat.userProfilePic,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
