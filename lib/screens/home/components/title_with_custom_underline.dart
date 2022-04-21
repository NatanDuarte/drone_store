import 'package:drone_store/constants.dart';
import 'package:flutter/material.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: customDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: customPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
