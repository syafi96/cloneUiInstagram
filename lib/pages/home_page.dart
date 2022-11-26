import 'package:clone_ui_instragram/pages/personal_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/feed_post.dart';
import '../pages/reels.dart';
import '../pages/search.dart';
import '../pages/shop.dart';
import '../provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List _widgetOption = [
    const FeedPost(),
    const Search(),
    const Reels(),
    const Shop(),
    const PersonalUser(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<System>(context);
    // ignore: no_leading_underscores_for_local_identifiers
    final _bio = data.bioPersonal;
    return Scaffold(
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Image.asset(
                    "asset/icons/home.png",
                    scale: 21,
                  )
                : Image.asset(
                    "asset/icons/home_outline.png",
                    scale: 21,
                  ),
            label: '1',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/icons/search_outline.png",
              scale: 21,
            ),
            label: '2',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Image.asset(
                    "asset/icons/reels.png",
                    scale: 21,
                  )
                : Image.asset(
                    "asset/icons/reels_outline.png",
                    scale: 21,
                  ),
            label: '3',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Image.asset(
                    "asset/icons/shop.png",
                    scale: 21,
                  )
                : Image.asset(
                    "asset/icons/shop_outline.png",
                    scale: 21,
                  ),
            label: '4',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? Container(
                    padding: const EdgeInsets.all(1.5),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.white,
                        border: Border.all(width: 1.0)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        _bio[0].photoUrl,
                      ),
                    ),
                  )
                : Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(_bio[0].photoUrl),
                      ),
                    ),
                  ),
            label: '5',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        elevation: 0,
      ),
    );
  }
}
