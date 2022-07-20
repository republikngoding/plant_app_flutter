import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constans.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import 'fetaured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomends_plant.dart';
import 'title_with_more_btn.dart';

class bodyPage extends StatelessWidget {
  const bodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(),
          TitleWithMoreButton(
            title: "Recomended",
            press: () {
              print("title button active");
            },
          ),
          RecomendsPlants(),
          TitleWithMoreButton(
            title: "feature Plants",
            press: () {
              print("title button active 2");
            },
          ),
          FeaturedPlant(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {
              print("feature plant card active");
            },
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {
              print("feature plant card active");
            },
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {
              print("feature plant card active");
            },
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {
              print("feature plant card active");
            },
          ),
        ],
      ),
    );
  }
}
