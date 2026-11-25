import '../widgets/notification.dart' as notif;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    const notifications = [
      notif.Notification(
        name: 'Bianca Lynette Garces',
        post: 'November 27',
        description: 'reacted to your new post',
      ),
      notif.Notification(
        name: 'Maria Santos',
        post: 'November 27',
        description: 'commented: Great job!',
      ),
      notif.Notification(
        name: 'John Carlo Reyes',
        post: 'November 27',
        description: 'shared your post',
      ),
      notif.Notification(
        name: 'Andrea Mae',
        post: 'November 26',
        description: 'liked your photo',
      ),
      notif.Notification(
        name: 'Miguel Lopez',
        post: 'November 26',
        description: 'sent you a friend request',
      ),
      notif.Notification(
        name: 'Camille Flores',
        post: 'November 26',
        description: 'mentioned you in a comment',
      ),
      notif.Notification(
        name: 'Ethan Villanueva',
        post: 'November 25',
        description: 'invited you to a group',
      ),
      notif.Notification(
        name: 'Sophia Rivera',
        post: 'November 25',
        description: 'reacted to your comment',
      ),
      notif.Notification(
        name: 'Gabriel Torres',
        post: 'November 25',
        description: 'started following you',
      ),
      notif.Notification(
        name: 'Lynette Cruz',
        post: 'November 24',
        description: 'liked 3 of your photos',
      ),
      notif.Notification(
        name: 'Carlo Mendoza',
        post: 'November 24',
        description: 'commented on your post',
      ),
      notif.Notification(
        name: 'Alyssa Ramos',
        post: 'November 24',
        description: 'shared a memory with you',
      ),
      notif.Notification(
        name: 'Daniel Aquino',
        post: 'November 23',
        description: 'accepted your friend request',
      ),
      notif.Notification(
        name: 'Jasmine Lee',
        post: 'November 23',
        description: 'mentioned you in a post',
      ),
      notif.Notification(
        name: 'Paolo Garcia',
        post: 'November 22',
        description: 'reacted to your photo',
      ),
      notif.Notification(
        name: 'Nicole Fernandez',
        post: 'November 22',
        description: 'replied to your comment',
      ),
      notif.Notification(
        name: 'Mark Dela Cruz',
        post: 'November 21',
        description: 'invited you to an event',
      ),
      notif.Notification(
        name: 'Keisha Bautista',
        post: 'November 21',
        description: 'liked your post',
      ),
      notif.Notification(
        name: 'Joshua Tan',
        post: 'November 20',
        description: 'sent you a message',
      ),
      notif.Notification(
        name: 'Angela Perez',
        post: 'November 20',
        description: 'commented: Looking forward to this',
      ),
    ];

    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 4, bottom: 12),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) => notifications[index],
      ),
    );
  }
}
