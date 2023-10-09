import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'back_view_clipper.dart';

class BackgroundWave extends StatelessWidget {
  final double height;
  final double opacity;

  const BackgroundWave({Key? key, required this.height, required this.opacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipPath(
        clipper: BackgroundWaveClipper(),
        child: Container(
          alignment: const Alignment(-0.7, -0.4),
          width: MediaQuery.of(context).size.width,
          height: height,
          color: Colors.blue.withOpacity(0.1),
          child: Opacity(
            opacity: opacity,
            child: Builder(builder: (context) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      CupertinoIcons.hand_draw_fill,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "ensyclopedia",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue.shade500),
                  ).tr(),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
