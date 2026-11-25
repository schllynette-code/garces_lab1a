import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 12),
      itemCount: 10,
      separatorBuilder: (context, index) =>
          const Divider(height: 1, thickness: 1),
      itemBuilder: (context, index) {
        final posts = const [
          NewsFeedCard(
            userName: 'Bianca Lynette Garces',
            postContent: 'what couldve been #multo',
            numOfLikes: 100,
            numOfComments: 12,
            numOfShares: 2,
            date: 'November 25',
            hasImage: true,
            postImage: 'assets/images/931660539_1028885490282747_7136897755419060070_n.png.jpeg',
            profileImage: 'assets/images/avatar.png',
          ),
          NewsFeedCard(
            userName: 'Lynette',
            postContent: 'i love lilies',
            numOfLikes: 200,
            numOfComments: 42,
            numOfShares: 5,
            hasImage: true,
            postImage: 'assets/images/632234287_122234109092331861_4150822439032322997_n.jpg',
            profileImage: 'assets/images/avatar.png',
            date: 'November 22',
          ),
          NewsFeedCard(
            userName: 'Gabriela Marcelo',
            postContent:
                'Finished a project that I have been working on for weeks!',
            numOfLikes: 86,
            numOfComments: 14,
            numOfShares: 3,
            date: 'November 23',
          ),
          NewsFeedCard(
            userName: 'John Carlo Reyes',
            postContent: 'Coffee, code, and a productive afternoon.',
            numOfLikes: 74,
            numOfComments: 9,
            numOfShares: 1,
            date: 'November 24',
          ),
          NewsFeedCard(
            userName: 'Bianca Batumbakal',
            postContent: 'look what i made! so cool',
            numOfLikes: 150,
            numOfComments: 20,
            numOfShares: 8,
            hasImage: true,
            postImage: 'assets/images/Photo_1.png',
            date: 'November 24',
          ),
          NewsFeedCard(
            userName: 'Miguel Lopez',
            postContent:
                'Sharing a study tip: take short breaks and stay consistent.',
            numOfLikes: 64,
            numOfComments: 18,
            numOfShares: 11,
            date: 'November 25',
          ),
          NewsFeedCard(
            userName: 'Camille Flores',
            postContent:
                'Today I am grateful for friends and new opportunities.',
            numOfLikes: 92,
            numOfComments: 16,
            numOfShares: 4,
            date: 'November 25',
          ),
          NewsFeedCard(
            userName: 'Ethan Villanueva',
            postContent: 'My first mobile app demo is finally ready!',
            numOfLikes: 128,
            numOfComments: 31,
            numOfShares: 9,
            date: 'November 26',
          ),
          NewsFeedCard(
            userName: 'Sophia Rivera',
            postContent: 'Learning something new every day is a win.',
            numOfLikes: 57,
            numOfComments: 7,
            numOfShares: 2,
            date: 'November 26',
          ),
          NewsFeedCard(
            userName: 'Gabriel Torres',
            postContent: 'Great work team! Our presentation went smoothly.',
            numOfLikes: 183,
            numOfComments: 24,
            numOfShares: 6,
            date: 'November 27',
          ),
        ];
        return posts[index];
      },
    );
  }
}
