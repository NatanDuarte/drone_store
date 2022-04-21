import 'package:drone_store/constants.dart';
import 'package:drone_store/screens/home/components/title_with_custom_underline.dart';
import 'package:drone_store/strings.dart';
import 'package:flutter/material.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: customDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(text: title),
          TextButton(
            onPressed: onPressed(),
            child: const Text(
              Strings.more,
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: customPrimaryColor,
              padding: const EdgeInsets.all(0),
            ),
          )
        ],
      ),
    );
  }
}
