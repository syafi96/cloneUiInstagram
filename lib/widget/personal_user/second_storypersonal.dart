import 'package:flutter/material.dart';

class SecondStoryPersonal extends StatelessWidget {
  const SecondStoryPersonal ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
          width: 60,
        )
      ],
    ); 
  }
}