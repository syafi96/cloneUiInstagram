import 'package:clone_ui_instragram/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

// ignore: must_be_immutable
class StoryPage extends StatefulWidget {
  String id;
  StoryPage({required this.id, Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  String? _poto;
  String? _posting;
  String? _nama;
  String? newurl;
  final _animationDuration = 5000;

  //var data;

  @override
  void initState() {
    final data = Provider.of<System>(context, listen: false);
    data.AmbilData(widget.id).then(
      (value) {
        newurl = data.url;
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _newId = int.parse(widget.id.toString());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // final storyId = ModalRoute.of(context)?.settings.arguments;
    final data = Provider.of<System>(context);
    final dataStory = data.dataPosting;
    final databio = data.bioPersonal;

    for (var i = 0; i < dataStory.length; i++) {
      if (_newId == dataStory[i].id && dataStory[i].story == true) {
        _poto = dataStory[i].photoUrl;
        _posting = dataStory[i].postingUrl;
        _nama = dataStory[i].nama;
        break;
      }
    }
    // final storyFriends = dataStory.firstWhere(
    //   (story) =>
    //       story.id ==
    //       int.parse(
    //         storyId.toString(),
    //       ),
    // );

    // final storyUser = databio.firstWhere(
    //   (story) =>
    //       story.id ==
    //       int.parse(
    //         storyId.toString(),
    //       ),
    // );

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: newurl == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    newurl!,
                    height: height * 0.93,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Container(
                        height: height * 0.05,
                        width: double.infinity,
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.only(bottom: 8),
                        child: LinearPercentIndicator(
                          lineHeight: 3,
                          animation: true,
                          animationDuration: _animationDuration,
                          percent: 1,
                          progressColor: Colors.grey,
                          onAnimationEnd: () {
                            // var _id = int.parse(_newId.toString());
                            for (var i = _newId; i <= dataStory.length; i++) {
                              if (_newId == 0) {
                                Navigator.pop(context);
                                break;
                              } else if (i + 1 > dataStory.length) {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                  ModalRoute.withName('/homePage'),
                                );
                              } else {
                                if (dataStory[i].story == true) {
                                  // Navigator.pushNamed(context, '/storyPage',
                                  //     arguments: dataStory[i].id);
                                  var _data = dataStory[i].id.toString();
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            StoryPage(id: _data),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          const begin = Offset(1.0, 0.0);
                                          const end = Offset.zero;
                                          const curve = Curves.easeInOut;

                                          var tween = Tween(
                                                  begin: begin, end: end)
                                              .chain(CurveTween(curve: curve));

                                          return SlideTransition(
                                            position: animation.drive(tween),
                                            child: child,
                                          );
                                        },
                                      ));
                                  break;
                                }
                              }
                            }
                          },
                        )),
                    //  LinearProgressIndicator(value: precent),
                    Container(
                      height: height * 0.05,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                    _newId == 0 ? databio[0].photoUrl : _poto!),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                _newId == 0 ? databio[0].nama : _nama!,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                                ModalRoute.withName('/homePage'),
                              );
                            },
                            child: const Icon(
                              Icons.clear_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.83,
                      width: double.infinity,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // var _id = int.parse(_newId.toString());
                              outherloop:
                              for (var i = _newId; i > 0; i--) {
                                var a = i - 1;
                                for (var j in dataStory) {
                                  if (a <= 0) {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ),
                                      ModalRoute.withName('/homePage'),
                                    );
                                    break outherloop;
                                  } else if (a > 0 &&
                                      a == j.id &&
                                      j.story == true) {
                                    // Navigator.pushNamed(context, '/storyPage',
                                    //     arguments: j.id);
                                    var _data = j.id.toString();
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              StoryPage(id: _data),
                                          transitionsBuilder: (context,
                                              animation,
                                              secondaryAnimation,
                                              child) {
                                            const begin = Offset(-1.0, 0.0);
                                            const end = Offset.zero;
                                            const curve = Curves.easeInOut;

                                            var tween = Tween(
                                                    begin: begin, end: end)
                                                .chain(
                                                    CurveTween(curve: curve));

                                            return SlideTransition(
                                              position: animation.drive(tween),
                                              child: child,
                                            );
                                          },
                                        ));
                                    break outherloop;
                                  }
                                }
                              }
                            },
                            child: Container(
                              width: width * 0.1,
                              color: Colors.transparent,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              //  var _id = int.parse(_newId.toString());
                              for (var i = _newId; i <= dataStory.length; i++) {
                                if (_newId == 0) {
                                  Navigator.pop(context);
                                  break;
                                } else if (i + 1 > dataStory.length) {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                    ModalRoute.withName('/homePage'),
                                  );
                                } else {
                                  if (dataStory[i].story == true) {
                                    // Navigator.pushNamed(context, '/storyPage',
                                    //     arguments: dataStory[i].id);
                                    var _data = dataStory[i].id.toString();
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              StoryPage(id: _data),
                                          transitionsBuilder: (context,
                                              animation,
                                              secondaryAnimation,
                                              child) {
                                            const begin = Offset(1.0, 0.0);
                                            const end = Offset.zero;
                                            const curve = Curves.easeInOut;

                                            var tween = Tween(
                                                    begin: begin, end: end)
                                                .chain(
                                                    CurveTween(curve: curve));

                                            return SlideTransition(
                                              position: animation.drive(tween),
                                              child: child,
                                            );
                                          },
                                        ));
                                    break;
                                  }
                                }
                              }
                            },
                            child: Container(
                              width: width * 0.9,
                              color: Colors.transparent,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      width: double.infinity,
                      height: height * 0.07,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 10,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10),
                                labelText: 'kirim pesan',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 12),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            flex: 2,
                            child: Icon(
                              Icons.favorite_border,
                              size: 25,
                            ),
                          ),
                          const Flexible(
                            flex: 2,
                            child: Icon(
                              Icons.near_me_outlined,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
    );
  }
}
