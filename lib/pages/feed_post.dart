import 'package:clone_ui_instragram/widget/post/data_storypage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';
import '../widget/post/posting.dart';

class FeedPost extends StatefulWidget {
  const FeedPost({Key? key}) : super(key: key);

  @override
  State<FeedPost> createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final data = Provider.of<System>(context);
    final story = data.storyFeed;
    final friends = data.dataPosting;
    final bio = data.bioPersonal[0];
    if (story.isEmpty) {
      story.add(
        DataStoryPage(
          id: bio.id.toString(),
          photoUrl: bio.photoUrl,
          nama: bio.nama,
          checkStory: bio.checkStory,
          page: bio.page,
          data: bio.data,
        ),
      );
    }

    if (story.length <= 1 && story.isNotEmpty) {
      for (var e = 0; e < friends.length; e++) {
        if (friends[e].story == true) {
          story.add(
            DataStoryPage(
              id: friends[e].id.toString(),
              photoUrl: friends[e].photoUrl,
              nama: friends[e].nama,
              checkStory: friends[e].checkStory,
              page: false,
              data: friends[e].data,
            ),
          );
        }
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 1,
            title: GestureDetector(
              onTap: () {},
              child: Image.asset(
                'asset/logo/instagram_logo.png',
                scale: 12,
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/addStory');
                  },
                  child: const Icon(
                    Icons.add_box_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.messenger_outline_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 90,
                  width: width,
                  padding: const EdgeInsets.all(5),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(left: 5),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return story[index];
                    },
                    separatorBuilder: (contex, index) {
                      return const SizedBox(
                        width: 2,
                      );
                    },
                    itemCount: story.length,
                  ),
                ),
                const Divider(
                  height: 2,
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              //semanticIndexOffset: 2,
              (context, index) {
                return Post(
                    id: friends[index].id,
                    nama: friends[index].nama,
                    photoUrl: friends[index].photoUrl,
                    lokasi: friends[index].lokasi,
                    postingUrl: friends[index].postingUrl,
                    deskripsi: friends[index].deskripsi);
              },
              childCount: friends.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              // mainAxisSpacing: 5,
              crossAxisCount: 1,
              childAspectRatio: 0.86,
            ),
          ),
        ],
      ),
    );
  }
}
