import 'package:flutter/material.dart';
import 'models/notification_model.dart';

class NotificationsPage extends StatelessWidget {
  final List<UserNotification> notifications = [
    UserNotification(
      username: 'Mohamed Maged',
      userProfilePic: 'assets/images/profile1.jpg',
      notificationText: 'liked your post.',
      timeAgo: '2h ago',
    ),
    UserNotification(
      username: 'Mohamed Maged',
      userProfilePic: 'assets/images/profile1.jpg',
      notificationText: 'commented on your photo.',
      timeAgo: '2h ago',
    ),
    UserNotification(
      username: 'Faisal Ali',
      userProfilePic: 'assets/images/profile2.jpg',
      notificationText: 'liked your post.',
      timeAgo: '5h ago',
    ),
    UserNotification(
      username: 'Faisal Ali',
      userProfilePic: 'assets/images/profile2.jpg',
      notificationText: 'commented on your photo.',
      timeAgo: '5h ago',
    ),
    UserNotification(
      username: 'Abdullah Alaa',
      userProfilePic: 'assets/images/profile3.jpg',
      notificationText: 'liked your post.',
      timeAgo: '3h ago',
    ),
    UserNotification(
      username: 'Abdullah Alaa',
      userProfilePic: 'assets/images/profile3.jpg',
      notificationText: 'commented on your photo.',
      timeAgo: '3h ago',
    ),
    UserNotification(
      username: 'Tarek Mohamed',
      userProfilePic: 'assets/images/profile4.jpg',
      notificationText: 'liked your post.',
      timeAgo: '4h ago',
    ),
    UserNotification(
      username: 'Tarek Mohamed',
      userProfilePic: 'assets/images/profile4.jpg',
      notificationText: 'commented on your photo.',
      timeAgo: '4h ago',
    ),
    UserNotification(
      username: 'Mahmoud Saad',
      userProfilePic: 'assets/images/profile5.jpg',
      notificationText: 'liked your post.',
      timeAgo: '5h ago',
    ),
    UserNotification(
      username: 'Mahmoud Saad',
      userProfilePic: 'assets/images/profile5.jpg',
      notificationText: 'commented on your photo.',
      timeAgo: '5h ago',
    ),
    UserNotification(
      username: 'Amr Khaled',
      userProfilePic: 'assets/images/profile6.jpg',
      notificationText: 'liked your post.',
      timeAgo: '6h ago',
    ),
    UserNotification(
      username: 'Amr Khaled',
      userProfilePic: 'assets/images/profile6.jpg',
      notificationText: 'commented on your photo.',
      timeAgo: '6h ago',
    ),
    UserNotification(
      username: 'Mohamed Rabea',
      userProfilePic: 'assets/images/profile7.jpg',
      notificationText: 'liked your post.',
      timeAgo: '7h ago',
    ),
    UserNotification(
      username: 'Mohamed Rabea',
      userProfilePic: 'assets/images/profile7.jpg',
      notificationText: 'commented on your photo.',
      timeAgo: '7h ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(notification.userProfilePic),
          ),
          title: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: notification.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' ${notification.notificationText}',
                ),
              ],
            ),
          ),
          subtitle: Text(notification.timeAgo),
        );
      },
    );
  }
}
