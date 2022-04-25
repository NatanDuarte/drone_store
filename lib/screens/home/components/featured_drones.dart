import 'package:drone_store/screens/home/components/featured_drone_card.dart';
import 'package:flutter/material.dart';

class FeaturedDrones extends StatelessWidget {
  const FeaturedDrones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedDroneCard(
              image: 'assets/images/featured1.jpg', onPressed: () {}),
          FeaturedDroneCard(
              image: 'assets/images/featured2.jpg', onPressed: () {}),
          FeaturedDroneCard(
              image: 'assets/images/featured3.jpg', onPressed: () {}),
        ],
      ),
    );
  }
}
