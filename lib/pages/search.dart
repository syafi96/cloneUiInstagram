import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    'syafi_praba',
                    style: GoogleFonts.poppins(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 35,
                    color: Colors.black,
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Search'),
      ),
      backgroundColor: Colors.white,
    );
  }
}
