import 'package:easy_localization/easy_localization.dart';
import 'package:ensyclopedic/models/dinosaurs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Detail extends StatefulWidget {
  // final List<String> videoUrlList;
  final Information information;

  const Detail(
      {
      //required this.videoUrlList,
      required this.information,
      Key? key})
      : super(key: key);

  @override
  DetailState createState() => DetailState();
}

class DetailState extends State<Detail> {
  // Url List

//
  List<YoutubePlayerController> lYTC = [];

  Map<String, dynamic> cStates = {};

  @override
  void initState() {
    super.initState();
    fillYTlists();
  }

  fillYTlists() {
    for (var element in widget.information.videoUrl) {
      String id = YoutubePlayer.convertUrlToId(element)!;
      YoutubePlayerController ytController = YoutubePlayerController(
        initialVideoId: id,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          enableCaption: true,
          captionLanguage: 'en',
        ),
      );

      ytController.addListener(() {
        if (cStates[id] != ytController.value.isPlaying) {
          if (mounted) {
            setState(() {
              cStates[id] = ytController.value.isPlaying;
            });
          }
        }
      });

      lYTC.add(ytController);
    }
  }

  @override
  void dispose() {
    for (var element in lYTC) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        orientation == Orientation.portrait
            ? SystemChrome.setEnabledSystemUIMode(
                SystemUiMode.manual,
                overlays: SystemUiOverlay.values,
              )
            : SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
        return PopScope(
          canPop: (orientation == Orientation.portrait) ? true : false,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: orientation == Orientation.portrait
                ? AppBar(
                    title: const Text(
                      'detail',
                      style: TextStyle(color: Colors.white),
                    ).tr(),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    iconTheme: const IconThemeData(color: Colors.white),
                  )
                : null,
            body: Stack(
              children: [
                Image.asset(
                  "assets/images/app_bar_background/back.jpg",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: orientation == Orientation.portrait
                      ? const EdgeInsets.all(10.0)
                      : EdgeInsets.zero,
                  child: ListView.builder(
                    physics: orientation == Orientation.portrait
                        ? const BouncingScrollPhysics()
                        : const NeverScrollableScrollPhysics(),
                    itemCount: widget.information.videoUrl.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      YoutubePlayerController ytController = lYTC[index];
                      String id = YoutubePlayer.convertUrlToId(
                          widget.information.videoUrl[index])!;
                      String curState = 'Connecting...';
                      if (cStates[id] != null) {
                        curState = cStates[id] ? 'playing' : 'paused';
                      }
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: orientation == Orientation.portrait
                                ? const EdgeInsets.symmetric(vertical: 8.0)
                                : EdgeInsets.zero,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: orientation == Orientation.portrait
                                      ? 220.0
                                      : MediaQuery.sizeOf(context).height,
                                  decoration: const BoxDecoration(
                                    color: Color(0xfff5f5f5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    child: YoutubePlayer(
                                      controller: ytController,
                                      showVideoProgressIndicator: true,
                                      progressIndicatorColor:
                                          Colors.lightBlueAccent,
                                      bottomActions: [
                                        CurrentPosition(),
                                        ProgressBar(isExpanded: true),
                                        FullScreenButton(),
                                      ],
                                      onReady: () {
                                        //   print('onReady for $index');
                                      },
                                      onEnded: (YoutubeMetaData md) {
                                        ytController
                                            .seekTo(const Duration(seconds: 0));
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        curState,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Divider(
                            thickness: 3,
                          ),
                          Text(
                            widget.information.about,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
