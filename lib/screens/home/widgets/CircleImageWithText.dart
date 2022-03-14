import 'package:flutter/material.dart';

class CircleImageWithText extends StatelessWidget {
  final String title;
  final String assetImage;

  const CircleImageWithText(
      {Key? key, required this.assetImage, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(5),
            color: Colors.grey.withOpacity(0.2),
            child: Image.asset(
              assetImage,
              height: 25.0,
              width: 25.0,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
