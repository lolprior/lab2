import 'package:flutter/material.dart';
import 'package:my_instagram/widgets/stories.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        Stack(children: [
          StoryIcon(
            url:
                "assets/images/first (1).png",
            isActive: false,
            userName: 'st.l1ght',
            width: 70,
            height: 70,
            radius: 50,
          ),
          Positioned(
            left: 60,
            bottom: 15,
            child: Icon(
              Icons.add_circle,
              size: 20,
            ),
          ),
        ]),
        StoryIcon(
          url:
              "assets/images/first (2).png",
          isActive: true,
          userName: 'bacak.12',
          width: 70,
          height: 70,
          radius: 50,
        ),
        StoryIcon(
            url:
                "assets/images/first (3).png",
            isActive: true,
            userName: 'simple_ex',
            width: 70,
            height: 70,
            radius: 50),
        StoryIcon(
          url:
              "assets/images/first (4).png",
          isActive: true,
          userName: 'example1',
          width: 70,
          height: 70,
          radius: 50,
        ),
        StoryIcon(
          url:
              "assets/images/first (1).png",
          isActive: true,
          userName: 'example2',
          width: 70,
          height: 70,
          radius: 50,
        ),
        StoryIcon(
          url:
              "assets/images/first (2).png",
          isActive: true,
          userName: 'example3',
          width: 70,
          height: 70,
          radius: 50,
        ),
        StoryIcon(
          url:
              "assets/images/first (3).png",
          isActive: true,
          userName: 'example4',
          width: 70,
          height: 70,
          radius: 50,
        ),
        StoryIcon(
          url:
              "assets/images/first (4).png",
          isActive: true,
          userName: 'example5',
          width: 70,
          height: 70,
          radius: 50,
        ),
      ],
    );
  }
}