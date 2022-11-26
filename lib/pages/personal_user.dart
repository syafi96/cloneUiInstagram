import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '/provider/provider.dart';
import '../widget/personal_user/header_tab_foto.dart';
import '../widget/personal_user/add_strorypersonalwidget.dart';
import '../widget/personal_user/second_storypersonal.dart';

class PersonalUser extends StatefulWidget {
  const PersonalUser({Key? key}) : super(key: key);

  @override
  State<PersonalUser> createState() => _PersonalUserState();
}

class _PersonalUserState extends State<PersonalUser> {
  bool _upDownStory = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const addCircle = AddStoryPersonalWidget();
    const newCircle = SecondStoryPersonal();
    final data = Provider.of<System>(context);
    //bio
    final bio = data.bioPersonal;
    //tabheader
    final tabsHeader = data.tabsHeader;
    final newHeader = tabsHeader[0].tabHeaderPersonalUser;
    //fotogrid
    final foto = data.fotoGrid;

    //story
    final story = data.storyPersonalUser;
    final List<Widget> items = [
      addCircle,
      newCircle,
      newCircle,
      newCircle,
      newCircle,
      newCircle
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 1,
            backgroundColor: Colors.white,
            title: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    bio[0].nama,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/addImage');
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
                  child: const Icon(
                    Icons.menu_rounded,
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
                  height: 80,
                  width: width,
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(bio[0].photoUrl),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        height: 80,
                        width: width * 0.22,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '11',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700, fontSize: 11),
                            ),
                            Text(
                              'Postingan',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: width * 0.22,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '500',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700, fontSize: 11),
                            ),
                            Text(
                              'Pengikut',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: width * 0.22,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '5',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700, fontSize: 11),
                            ),
                            Text(
                              'Mengikuti',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  margin: const EdgeInsets.only(
                    top: 5,
                  ),
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          bio[0].namaPengguna,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          bio[0].bio,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: width,
                  margin: const EdgeInsets.only(
                    top: 15,
                  ),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/editBio');
                          },
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(7),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Edit Profile',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: const BorderRadiusDirectional.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: const Icon(
                          Icons.person_add_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: width,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          if (_upDownStory == false) {
                            _upDownStory = true;
                          } else {
                            _upDownStory = false;
                          }
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Sorotan cerita',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 11),
                          ),
                        ),
                        Icon(
                          _upDownStory == false
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                _upDownStory == false
                    ? const SizedBox()
                    : SizedBox(
                        width: width,
                        height: 100,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 15,
                                width: width,
                                padding: const EdgeInsets.only(
                                  right: 10,
                                  left: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Simpan cerita favorit di profil Anda',
                                    style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 80,
                              width: width,
                              margin: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: ListView.separated(
                                padding: const EdgeInsets.only(left: 10),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final newstory = story.length > 1
                                      ? story[index]
                                      : items[index];
                                  // print(newstory);
                                  return newstory;
                                },
                                separatorBuilder: (contex, index) {
                                  return const SizedBox(
                                    width: 10,
                                  );
                                },
                                itemCount: story.length > 1
                                    ? story.length
                                    : items.length,
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: HeaderTabsMenu(
              maxExtent: 40,
              minExtent: 40,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                var fotoRandom = Random().nextInt(65);
                return newHeader == false
                    ? Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(foto[index].url),
                          ),
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.pravatar.cc/150?img=$fotoRandom'),
                          ),
                        ),
                      );
              },
              childCount: newHeader == false ? foto.length : 5,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: newHeader == false ? 1 : 0.6,
              crossAxisCount: 3,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
            ),
          )
        ],
      ),
    );
  }
}
