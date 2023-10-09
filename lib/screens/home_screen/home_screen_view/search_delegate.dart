import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ensyclopedic/datas/datas.dart';
import 'package:ensyclopedic/models/dinosaurs.dart';
import 'package:ensyclopedic/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Type> matchQuery = [];
    for (var type in Type.values) {
      if (type.name.tr().toLowerCase().contains(query.tr().toLowerCase())) {
        matchQuery.add(type);
      }
    }

    return CustomScrollView(
      slivers: [
        SliverList.list(
          children: [
            for (int i = 0; i < matchQuery.length; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SizedBox(
                  height: 200,
                  child: Swiper(
                    itemCount: Datas.select(matchQuery[i]).length,
                    itemBuilder: (context, index) {
                      List<Information> info = Datas.select(matchQuery[i]);
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
                            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
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
                                      child: Image.asset(information.imageName))
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    pagination: const SwiperPagination(),
                    control: const SwiperControl(color: Colors.transparent),
                    viewportFraction: 0.9,
                  ),
                ),
              )
          ],
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Type> matchQuery = [];
    for (var book in Type.values) {
      if (book.name.tr().toLowerCase().contains(query.tr().toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return CustomScrollView(
      slivers: [
        SliverList.list(
          children: [
            for (int i = 0; i < matchQuery.length; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Swiper(
                        itemCount: Datas.select(matchQuery[i]).length,
                        itemBuilder: (context, index) {
                          List<Information> info = Datas.select(matchQuery[i]);
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
                                filter:
                                    ImageFilter.blur(sigmaX: 30, sigmaY: 30),
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
                        control: const SwiperControl(color: Colors.transparent),
                        viewportFraction: 0.9,
                      ),
                    ),
                    Text(
                      matchQuery[i].name.tr(),
                      style: const TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        thickness: 3,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ],
    );
  }
}
