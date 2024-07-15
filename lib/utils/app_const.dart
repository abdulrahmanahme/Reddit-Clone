import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AppConst {
  static const svgPath = 'assets/svg/';
  static final PREF_TOKEN_KEY = "PREF_TOKEN_KEY";
  static bool SHOW_LOG = true;
  static String username = '6MUhnR7mgDTg4PvmGUh3sw';
  static String password = 'o6mrW67nWkeZsJtOG2WZqoy96oYD2w';
  static String token='eyJhbGciOiJSUzI1NiIsImtpZCI6IlNIQTI1NjpzS3dsMnlsV0VtMjVmcXhwTU40cWY4MXE2OWFFdWFyMnpLMUdhVGxjdWNZIiwidHlwIjoiSldUIn0.eyJzdWIiOiJ1c2VyIiwiZXhwIjoxNzIxMTA3MDA3LjQ2NzA3MiwiaWF0IjoxNzIxMDIwNjA3LjQ2NzA3MSwianRpIjoiVGRKRmpDdzFPODBwUjVrdnVjcnJNMGdzS0k0ZWtBIiwiY2lkIjoiNk1VaG5SN21nRFRnNFB2bUdVaDNzdyIsImxpZCI6InQyX2FpbGdka3VlIiwiYWlkIjoidDJfYWlsZ2RrdWUiLCJsY2EiOjE2MTQwMjExMzUwMDAsInNjcCI6ImVKeUtWdEpTaWdVRUFBRF9fd056QVNjIiwiZmxvIjo5fQ.h6W1XCSXe9W5Ien6IOAxya3o6riouyqVNp3qehJEiZAaaih_6imo_nMY99cxk9CmiArN_JoYiQtsyyYs_TxzcfHsdBpLtQkW_VTtJn7WX6DjuMqZpNuv2Chuaj9EDTAYxImiOThCXx-otJR_Y-cvNe8ZXbeMst59DPTo36KPSM_EnfrH4MrdW-xOcEjwZVOWM_3a3JerJey3thpfJDwkgCfm1x-cBmlNL3Qm-p6EvkuPTnXy1J3sLwWvMNP9gFlmuHN22ZZUPqAOyX8Uto9qK06jBonfLUskM3dvwW6zjwdtSJF7eZ01fF191DYOYYhgAmXhGKrYFwaKjUyCITQZ6A';
  static const image='https://www.redditstatic.com/avatars/defaults/v2/avatar_default_6.png ';
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
      customControls: Container( ),
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.white,
        handleColor: Colors.white,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.grey,
      ),
      autoInitialize: true,
      showControlsOnInitialize: false , // Disable Chewie's controls
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
