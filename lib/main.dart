import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../pages/feed_post.dart';
import '../secondpages/add_imagebio.dart';
import '../secondpages/edit_bio.dart';
import '../secondpages/add_bio.dart';
import '../secondpages/add_namabio.dart';
import '../secondpages/add_namapenggunabio.dart';
//import '../secondpages/storypage.dart';
import 'pages/home_page.dart';
import '/pages/personal_user.dart';
import '/provider/provider.dart';
import 'secondpages/add_image.dart';
import 'secondpages/add_story.dart';
import 'secondpages/add_storypersonal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ChangeNotifierProvider(
      create: (context) => System(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          '/homePage': (context) => const HomePage(),
          '/feedPost': (context) => const FeedPost(),
          '/personalUser': (context) => const PersonalUser(),
          //pagessecond
          '/addStory': (context) => const AddStory(),
         // '/storyPage': (context) => const StoryPage(),
          '/addImage': (context) => const AddImage(),
          '/addstorypersonal': (context) => const AddStoryPersonal(),
          '/editBio': (context) => const EditBio(),
          '/addImageBio': (context) => const AddImageBio(),
          '/addNamaBio': (context) => const AddNamaBio(),
          '/addNamaPenggunaBio': (context) => const AddNamaPenggunaBio(),
          '/addBio': (context) => const AddBio(),
        },
      ),
    );
  }
}
