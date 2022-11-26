import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class NewStoryPersonal extends StatelessWidget {
  String url,deskripsi;
  NewStoryPersonal({required this.url, required this.deskripsi, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
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
              image: NetworkImage(url),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: 60,
          child: Center(
            child: Text(
              deskripsi,
              style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    );
  }
}
