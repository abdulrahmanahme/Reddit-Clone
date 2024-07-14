import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AppConst {
  static const svgPath = 'assets/svg/';

 static ChewieController chewieController(
      {required VideoPlayerController videoPlayerController}) {
    return ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: videoPlayerController.value.aspectRatio,
      autoPlay: false,
      looping: false,
      controlsSafeAreaMinimum: EdgeInsets.all(20),
      allowFullScreen: false,
      showOptions: false,
      placeholder: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
      customControls: Container(),
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.white,
        handleColor: Colors.white,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.grey,
      ),
      autoInitialize: true,
      showControlsOnInitialize: false, // Disable Chewie's controls
    );
  }
 static   String formatDuration(Duration duration) {
    String minutes =
        duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    String seconds =
        duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}