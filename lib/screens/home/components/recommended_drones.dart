import 'package:drone_store/screens/home/components/recommended_drone_card.dart';
import 'package:flutter/material.dart';

class RecommendedDrones extends StatelessWidget {
  const RecommendedDrones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedDroneCard(
            image: "assets/images/drone1.jpg",
            title: 'Crosser',
            price: 1230,
            country: 'Brazil',
            onPressed: () {},
          ),
          RecommendedDroneCard(
            image: "assets/images/drone2.jpg",
            title: 'rivers',
            price: 999,
            country: 'France',
            onPressed: () {},
          ),
          RecommendedDroneCard(
            image: "assets/images/drone3.jpg",
            title: 'Jeager',
            price: 1500,
            country: 'Germany',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
