import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/screens/home/components/featured_plants.dart';
import 'package:plant_shop/screens/home/components/header_with_search_box.dart';
import 'package:plant_shop/screens/home/components/recomended_plants.dart';
import 'package:plant_shop/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          const RecomendedPlants(),
          TitleWithMoreBtn(
            title: 'Featured Plants',
            press: () {},
          ),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
