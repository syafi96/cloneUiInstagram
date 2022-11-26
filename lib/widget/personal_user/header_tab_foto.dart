import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

class HeaderTabsMenu extends SliverPersistentHeaderDelegate {
  HeaderTabsMenu({
    required this.minExtent,
    required this.maxExtent,
  });

  @override
  final double minExtent;

  @override
  final double maxExtent;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const TabsHeader();
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class TabsHeader extends StatelessWidget {
  const TabsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final header = Provider.of<System>(context);
    Color color = Colors.black;
    Color color1 = Colors.grey;
    final tabsHeader = header.tabsHeader;
    final newHeader = tabsHeader[0].tabHeaderPersonalUser;
    return Align(
      child: Container(
        height: 40,
        width: width,
        color: Colors.white,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                header.editTabsHeader(01, false, context);
              },
              child: Container(
                height: 40,
                width: width * 0.5,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: newHeader == false ? color : color1,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.grid_on,
                    size: 25,
                    color: newHeader == false ? color : color1,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                header.editTabsHeader(01, true, context);
              },
              child: Container(
                height: 40,
                width: width * 0.5,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: newHeader == false ? color1 : color,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.account_box_outlined,
                    size: 25,
                    color: newHeader == false ? color1 : color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
