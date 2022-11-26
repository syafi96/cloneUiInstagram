import 'package:clone_ui_instragram/secondpages/storypage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

// ignore: must_be_immutable
class DataStoryPage extends StatefulWidget {
  String id;
  String photoUrl;
  String nama;
  bool? checkStory;
  bool? page;
  String data;

  DataStoryPage(
      {required this.id,
      required this.photoUrl,
      required this.nama,
      required this.checkStory,
      required this.page,
      required this.data,
      Key? key})
      : super(key: key);

  @override
  State<DataStoryPage> createState() => _DataStoryPageState();
}

class _DataStoryPageState extends State<DataStoryPage> {
  @override
  Widget build(BuildContext context) {
    final allData = Provider.of<System>(context);
    final allStory = allData.bioPersonal;

    return widget.data == 'MyUser'
        ? Column(
            children: [
              widget.page == false
                  ? Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(allStory[0].photoUrl),
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => StoryPage(id: widget.id),
                          ),
                        );
                        // Navigator.pushNamed(context, '/storyPage',
                        //     arguments: widget.id);
                      },
                      child: Container(
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
                            color: widget.checkStory == false
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(allStory[0].photoUrl),
                          backgroundColor: Colors.transparent,
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StoryPage(id: widget.id),
                ),
              );
              // Navigator.pushNamed(
              //   context,
              //   '/storyPage',
              //   arguments: widget.id,
              // );
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
                      color:
                          widget.checkStory == false ? Colors.red : Colors.grey,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.photoUrl),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 70,
                  child: Center(
                    child: Text(
                      widget.nama,
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
