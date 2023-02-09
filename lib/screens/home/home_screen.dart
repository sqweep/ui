import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/demoData.dart';

import 'components/image_carousel.dart';
import 'components/restourant_info_medium_card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            floating: true,
            title: Center(
              child: Column(
                children: [
                  Text(
                    "Добро пожаловать в".toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: kActiveColor),
                  ),
                  Text(
                    "Бойцовский клуб",
                    style: TextStyle(color: kMainColor),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(child: ImageCarousel()),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
                child: SectionTitle(
              title: "Лучшие бойцы",
            )),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestourantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      ultimate: demoMediumCardData[index]['ultimate'],
                      image: demoMediumCardData[index]['image'],
                      hp: demoMediumCardData[index]['hp'],
                      power: demoMediumCardData[index]['power'],
                      stamina: demoMediumCardData[index]['stamina'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("assets/images/Banner.png"),
            ),
          ),
        ],
      ),
    );
  }
}
