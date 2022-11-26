import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class EditBio extends StatefulWidget {
  const EditBio({Key? key}) : super(key: key);

  @override
  State<EditBio> createState() => _EditBioState();
}

class _EditBioState extends State<EditBio> {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const bool _readOnly = true;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final bio = Provider.of<System>(context);
    final newBio = bio.bioPersonal;

    // ignore: no_leading_underscores_for_local_identifiers
    final _photoUrl = newBio[0].photoUrl;

    TextEditingController namaInput =
        TextEditingController(text: newBio[0].nama);
    TextEditingController namaPenggunaInput =
        TextEditingController(text: newBio[0].namaPengguna);
    TextEditingController deskripsiInput =
        TextEditingController(text: newBio[0].bio);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leadingWidth: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.clear_rounded,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Edit Profil",
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
                bio.editBio(_photoUrl, namaInput.text, namaPenggunaInput.text,
                      deskripsiInput.text, context);
                  Navigator.pop(context);
                // if (namaInput.text.isEmpty ||
                //     namaPenggunaInput.text.isEmpty ||
                //     deskripsiInput.text.isEmpty) {
                //   // ignore: avoid_print
                //   print('Data Kosong');
                // } else {
                //   bio.editBio(_url, namaInput.text, namaPenggunaInput.text,
                //       deskripsiInput.text, context);
                //   Navigator.pop(context);
                // }
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
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                //color: Colors.amber,
                borderRadius: const BorderRadius.all(
                  Radius.circular(60),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_photoUrl),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/addImageBio');
              },
              child: Text(
                "Ganti Foto Profil",
                style: GoogleFonts.poppins(
                  color: Colors.blueAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              readOnly: _readOnly,
              onTap: () {
                Navigator.pushNamed(context, '/addNamaBio');
              },
              controller: namaInput,

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
            const SizedBox(height: 10),
            TextField(
              onTap: () {
                Navigator.pushNamed(context, '/addNamaPenggunaBio');
              },
              readOnly: _readOnly,
              controller: namaPenggunaInput,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Nama Pengguna :',
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
            const SizedBox(height: 10),
            TextField(
              onTap: () {
                Navigator.pushNamed(context, '/addBio');
              },
              maxLines: 7,
              minLines: 1,
              readOnly: _readOnly,
              controller: deskripsiInput,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Bio :',
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
          ],
        ),
      ),
    );
  }
}
