import 'package:drone_store/constants.dart';
import 'package:flutter/material.dart';

class RecommendedDroneCard extends StatelessWidget {
  const RecommendedDroneCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.onPressed})
      : super(key: key);
  final String image, title, country;
  final int price;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: customDefaultPadding,
        top: customDefaultPadding / 2,
        bottom: customDefaultPadding,
      ),
      width: _size.width * 0.40,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPressed(),
            child: Container(
              padding: const EdgeInsets.all(customDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: customPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${title.toUpperCase()}\n',
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                              color: customPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'R\$ $price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: customPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
