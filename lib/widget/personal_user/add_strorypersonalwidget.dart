import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddStoryPersonalWidget extends StatelessWidget {
  const AddStoryPersonalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: () {
      Navigator.pushNamed(context, '/addstorypersonal');
    },
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.5,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: const Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
            width: 60,
            child: Center(
              child: Text(
                'Baru',
                style: GoogleFonts.poppins(
                    fontSize: 11,
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
