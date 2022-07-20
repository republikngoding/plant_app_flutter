import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constans.dart';

import 'icon_card.dart';
import 'image_and_icons.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Angelica\n",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Russia",
                    style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  )
                ])),
                Spacer(),
                Text(
                  "\$400",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
