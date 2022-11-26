import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Post extends StatelessWidget {
  int id;
  String nama;
  String photoUrl;
  String lokasi;
  String postingUrl;
  String deskripsi;
  Post(
      {required this.id,
      required this.nama,
      required this.photoUrl,
      required this.lokasi,
      required this.postingUrl,
      required this.deskripsi,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      child: Column(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(photoUrl), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          nama,
                          style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          lokasi,
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const Icon(
                  Icons.more_vert_rounded,
                  size: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: width,
              color: Colors.black,
              child: Image(
                image: NetworkImage(postingUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              children: const [
                Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.messenger_outline_rounded,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.near_me_outlined,
                  size: 25,
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Icon(
                  Icons.bookmark_border_outlined,
                  size: 25,
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            width: width,
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              children: [
                Text(
                  '20',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'suka',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: nama,
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: ' ',
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: deskripsi,
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 15,
            width: width,
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '1 hari yang lalu',
                style: GoogleFonts.poppins(
                  color: Colors.grey[400],
                  fontSize: 7,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
