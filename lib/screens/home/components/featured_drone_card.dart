import 'package:drone_store/constants.dart';
import 'package:flutter/material.dart';

class FeaturedDroneCard extends StatelessWidget {
  const FeaturedDroneCard({
    Key? key,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  final String image;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed(),
      child: Container(
        margin: const EdgeInsets.only(
          left: customDefaultPadding,
          top: customDefaultPadding / 2,
          bottom: customDefaultPadding / 2,
        ),
        width: _size.width * 0.80,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
