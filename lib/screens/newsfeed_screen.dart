import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Bianca Lynette Garces',
          postContent: 'Hey!',
          numOfLikes: 100,
          numOfComments: 12,
          numOfShares: 2,
          date: 'November 21',
        ),
        NewsFeedCard(
          userName: 'lynette',
          postContent: 'wow wow wow',
          numOfLikes: 200,
          numOfComments: 42,
          numOfShares: 5,
          hasImage: true,
          postImage: 'assets/images/sample_post.jpg',
          profileImage: 'assets/images/avatar.png',
          date: 'November 22',
        ),
      ],
    );
  }
}
