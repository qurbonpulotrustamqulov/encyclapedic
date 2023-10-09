import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:ensyclopedic/screens/home_screen/home_screen_view/search_delegate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bach_view.dart';

class SliverSearchAppBar extends SliverPersistentHeaderDelegate {
  const SliverSearchAppBar();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 1.1;
    double topPadding = MediaQuery.of(context).padding.top;

    return Stack(
      children: [
        BackgroundWave(
          height: 200,
          opacity: (topPadding + offset) * 0.008,
        ),
        Positioned(
          top: (topPadding + offset) * 0.8,
          left: 16,
          right: 16,
          child: SizedBox(
              height: 50,
              child: GestureDetector(
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: SizedBox(
                    height: 50,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("search").tr(),
                          const Icon(CupertinoIcons.search)
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        )
      ],
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 90;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}


