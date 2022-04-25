import 'package:drone_store/constants.dart';
import 'package:drone_store/screens/home/components/featured_drones.dart';
import 'package:drone_store/screens/home/components/header_with_search_bar.dart';
import 'package:drone_store/screens/home/components/recommended_drones.dart';
import 'package:drone_store/screens/home/components/title_with_button.dart';
import 'package:drone_store/strings.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: _size),
          TitleWithMoreButton(title: Strings.recommended, onPressed: () {}),
          const RecommendedDrones(),
          TitleWithMoreButton(title: Strings.featuredDrones, onPressed: () {}),
          const FeaturedDrones(),
          const SizedBox(height: customDefaultPadding),
        ],
      ),
    );
  }
}
