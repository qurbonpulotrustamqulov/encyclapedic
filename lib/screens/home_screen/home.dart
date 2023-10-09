import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ensyclopedic/datas/datas.dart';
import 'package:ensyclopedic/models/dinosaurs.dart';
import 'package:ensyclopedic/screens/detail_screen.dart';

import 'package:flutter/material.dart';

import 'home_screen_view/cards.dart';
import 'home_screen_view/sliver_search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String phone = '+998936353855';
  final websiteUri = Uri.parse('https://t.me/uft0da');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Drawer(
          child: Stack(
        children: [
          Image.asset(
            "assets/images/app_bar_background/for_drawer.jpg",
            height: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          const Cards(),
        ],
      )),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/app_bar_background/back.jpg",
            height: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          CustomScrollView(
            slivers: [
              const SliverPersistentHeader(
                delegate: SliverSearchAppBar(),
                pinned: true
              ),
              SliverList.list(
                children: [
                  for (int i = 0; i < Type.values.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Swiper(
                              itemCount: Datas.select(Type.values[i]).length,
                              itemBuilder: (context, index) {
                                List<Information> info =
                                    Datas.select(Type.values[i]);
                                final Information information = info[index];
                                //Type.values.map((info)
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Detail(
                                            information: information,
                                          ),
                                        ));
                                  },
                                  child: Card(
                                    color: Colors.transparent,
                                    clipBehavior: Clip.antiAlias,
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 30, sigmaY: 30),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        child: Column(
                                          children: [
                                            Text(
                                              information.name,
                                              style: TextStyle(
                                                  color: Colors.blue.shade500,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Expanded(
                                                child: Image.asset(
                                                    information.imageName))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              pagination: const SwiperPagination(),
                              control: const SwiperControl(
                                  color: Colors.transparent),
                              viewportFraction: 0.9,
                            ),
                          ),
                          Text(
                            Type.values[i].name.tr(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: Divider(
                              thickness: 3,
                            ),
                          )
                        ],
                      ),
                    )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
