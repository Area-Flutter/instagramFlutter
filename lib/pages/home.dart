import 'package:flutter/material.dart';
import 'package:instagram_app/util/utils.dart';


class UserHome extends StatelessWidget {
  final List people = [
    'areamultimedia',
    'areaemprendimiento',
    'arealenguaje',
    'areaentretenimiento',
    'areanoticias',
    'areadesarrollo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //STORIES
          // ignore: sized_box_for_whitespace
          Container(
            height: 130,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: (_, index) {
              return BubbleStories(text: people[index]);
            }),
          ),
          UserPosts()
        ],
      ),
    );
  }
}
