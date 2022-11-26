import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewMyStory extends StatelessWidget {
  const NewMyStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Column(
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
              color: Colors.red,
            ),
          ),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(''),
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
    );
  }
}
