// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:clone_ui_instragram/widget/personal_user/max_linesformate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class AddNamaBio extends StatelessWidget {
  const AddNamaBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final nama = Provider.of<System>(context);
    TextEditingController namaInput = TextEditingController(text: null);
    const int _maxLines = 1;
    const int _maxLlength = 13;
    String? url, namaPengguna, deskripsi;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        elevation: 1,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Nama",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                if (namaInput.text.isEmpty) {
                  // ignore: avoid_print
                  print('Data Kosong');
                } else {
                  nama.editBio(
                      url, namaInput.text, namaPengguna, deskripsi, context);
                  Navigator.pop(context);
                }
              },
              child: const Icon(
                Icons.check_rounded,
                color: Colors.blueAccent,
                size: 25.0,
              ),
            ),
          )
        ],
      ),
      body: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
          bottom: 20,
        ),
        child: TextField(
          controller: namaInput,
          inputFormatters: [
            MaxLinesTextInputFormatter(
              maxLines: _maxLines,
              maxLength: _maxLlength,
            )
          ],
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            labelText: 'Nama :',
            labelStyle: const TextStyle(
              color: Colors.grey,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
