import 'package:drone_store/constants.dart';
import 'package:drone_store/strings.dart';
import 'package:flutter/material.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({required this.size, Key? key}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    double twentyPercentOfScreen = size.height * 0.20;
    return Container(
      margin: const EdgeInsets.only(bottom: customDefaultPadding * 2.5),
      height: twentyPercentOfScreen,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: customDefaultPadding,
              right: customDefaultPadding,
            ),
            height: twentyPercentOfScreen - 25,
            decoration: const BoxDecoration(
              color: customPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Drones for sale!',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset('assets/icons/drone.png')
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: customDefaultPadding),
              padding:
                  const EdgeInsets.symmetric(horizontal: customDefaultPadding),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: customPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: searchBarHint,
                    hintStyle: TextStyle(
                      color: customPrimaryColor.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: const Icon(Icons.search)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
