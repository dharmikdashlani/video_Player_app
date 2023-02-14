import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../modals/globals.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });

    if (Globals.image == 1) {
      videoPlayerController = VideoPlayerController.asset(
        'assets/videos/fish.mp4',
      );
    } else if (Globals.image == 2) {
      videoPlayerController = VideoPlayerController.asset(
        'assets/videos/car2.mp4',
      );
    } else if (Globals.image == 3) {
      videoPlayerController = VideoPlayerController.asset(
        'assets/videos/nature.mp4',
      );
    } else if (Globals.image == 4) {
      videoPlayerController = VideoPlayerController.asset(
        'assets/videos/travel.mp4',
      );
    }

    videoPlayerController.initialize().then((value) {
      setState(() {});
    });

    chewieController =
        ChewieController(videoPlayerController: videoPlayerController);
    (chewieController.isPlaying)
        ? Timer.periodic(const Duration(milliseconds: 100), (timer) {
            setState(() {});
          })
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        centerTitle: true,
        title: Text(Name!),
      ),
      body: Container(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: videoPlayerController.value.aspectRatio,
          child: Chewie(
            controller: chewieController,
          ),
        ),
      ),
    );
  }
}
