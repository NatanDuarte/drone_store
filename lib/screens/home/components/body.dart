import 'package:drone_store/constants.dart';
import 'package:drone_store/strings.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.15,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.15 - 25,
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
                      'Drones',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: customDefaultPadding),
                  padding: const EdgeInsets.symmetric(
                      horizontal: customDefaultPadding),
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
        )
      ],
    );
  }
}
