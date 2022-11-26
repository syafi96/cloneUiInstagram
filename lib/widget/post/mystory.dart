import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

// ignore: must_be_immutable
class MyStory extends StatelessWidget {
  int id;
  bool? story;
  bool page;
  MyStory({required this.id,required this.story, required this.page, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<System>(context);
    final story = data.bioPersonal;
    return page == false
        ? 
        Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(story[0].photoUrl),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 70,
                child: Center(
                  child: Text(
                    'Cerita Anda',
                    style: GoogleFonts.poppins(
                        fontSize: 9,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/storyPage', arguments: id);
            },
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  padding: const EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      // ignore: unrelated_type_equality_checks
                      color: story == true ? Colors.red: Colors.grey,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(story[0].photoUrl),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 70,
                  child: Center(
                    child: Text(
                      'Cerita Anda',
                      style: GoogleFonts.poppins(
                          fontSize: 9,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
