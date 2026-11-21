import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final int numOfComments;
  final int numOfShares;
  final bool hasImage;
  final String? postImage;
  final String? profileImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes = 0,
    this.numOfComments = 0,
    this.numOfShares = 0,
    this.hasImage = false,
    this.postImage,
    this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row (Enhancement 2: Avatar for user profile image)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(18),
                  backgroundColor: Colors.grey[300],
                  backgroundImage: profileImage != null
                      ? AssetImage(profileImage!)
                      : null,
                  child: profileImage == null
                      ? Icon(Icons.person, color: Colors.grey[700])
                      : null,
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFont(
                            text: date,
                            fontSize: ScreenUtil().setSp(12),
                            color: Colors.grey,
                          ),
                          SizedBox(width: ScreenUtil().setWidth(3)),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: ScreenUtil().setSp(15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(8)),

            // Post Content
            CustomFont(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(8)),

            // Enhancement 1: Dynamic Image Widget
            hasImage == true && postImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
                    child: Image.asset(
                      postImage!,
                      width: double.infinity,
                      height: ScreenUtil().setHeight(200),
                      fit: BoxFit.cover,
                    ),
                  )
                : SizedBox(height: ScreenUtil().setHeight(1)),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // Likes, Comments, Shares Counter Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: ScreenUtil().setSp(14),
                      color: FB_PRIMARY,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(4)),
                    CustomFont(
                      text: numOfLikes.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey[700]!,
                    ),
                  ],
                ),
                CustomFont(
                  text: '$numOfComments Comments  $numOfShares Shares',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey[700]!,
                ),
              ],
            ),
            const Divider(),

            // Enhancement 3: Widget-based Like, Comment, Share buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildActionButton(
                  icon: Icons.thumb_up_alt_outlined,
                  label: 'Like',
                  onTap: () {
                    debugPrint('Liked');
                  },
                ),
                _buildActionButton(
                  icon: Icons.comment_outlined,
                  label: 'Comment',
                  onTap: () {},
                ),
                _buildActionButton(
                  icon: Icons.redo_outlined,
                  label: 'Share',
                  onTap: () {},
                ),
              ],
            ),
            const Divider(),

            // Comment Input Row (Enhancement 2: Avatar)
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(14),
                  backgroundColor: Colors.grey[300],
                  backgroundImage: profileImage != null
                      ? AssetImage(profileImage!)
                      : null,
                  child: profileImage == null
                      ? Icon(
                          Icons.person,
                          size: ScreenUtil().setSp(16),
                          color: Colors.grey[700],
                        )
                      : null,
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setSp(10),
                      0,
                      ScreenUtil().setSp(10),
                      0,
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(28),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(14)),
                      ),
                    ),
                    child: CustomFont(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomFont(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(ScreenUtil().setSp(6)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(6),
          horizontal: ScreenUtil().setWidth(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: ScreenUtil().setSp(18), color: FB_DARK_PRIMARY),
            SizedBox(width: ScreenUtil().setWidth(6)),
            CustomFont(
              text: label,
              fontSize: ScreenUtil().setSp(12),
              color: FB_DARK_PRIMARY,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
