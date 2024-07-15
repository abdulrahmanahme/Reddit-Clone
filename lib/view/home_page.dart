import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/config/app_colors.dart';
import 'package:reddit_clone/core/widgets/app_bar_video_widget.dart';
import 'package:reddit_clone/core/widgets/cooments_widget.dart';
import 'package:reddit_clone/core/widgets/icon_message_widget.dart';
import 'package:reddit_clone/core/widgets/title_card_vedio.dart';
import 'package:reddit_clone/main.dart';
import 'package:reddit_clone/utils/app_const.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import '../core/widgets/icon_reply_widget.dart';
import '../core/widgets/like_icon_widget.dart';
import '../view_model/video_view_model.dart';

class RedditVideoPlayer extends StatefulWidget {
  final String videoUrl;

  RedditVideoPlayer({required this.videoUrl});

  @override
  _RedditVideoPlayerState createState() => _RedditVideoPlayerState();
}

class _RedditVideoPlayerState extends State<RedditVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isMuted = false;
  late VideoProvider videoProvider;

  @override
  void initState() {
    super.initState();
    videoProvider = Provider.of(navKey.currentContext!);
    videoProvider.getToken();
    videoProvider.getVideoDetails().then((value) {
      _initializeVideoPlayer(
          value[0].data.children[0].data.media!.redditVideo.dashUrl);
    });
  }

  void _initializeVideoPlayer(String videoUrl) {
    _videoPlayerController = VideoPlayerController.network(videoUrl);
    _videoPlayerController.initialize().then((_) {
      setState(() {
        _chewieController = AppConst.chewieController(
            videoPlayerController: _videoPlayerController);
      });
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Consumer<VideoProvider>(
            builder: (BuildContext context, VideoProvider pro, Widget? child) {
              return GestureDetector(
                onVerticalDragEnd: (value) {
                  showMaterialModalBottomSheet(
                    context: context,
                    enableDrag: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) =>  CommentsWidget(
                      videoModel: pro.listVideModel,
                    ),
                  );
                },
                child: _chewieController != null
                    ? Stack(
                        fit: StackFit.expand,
                        children: [
                          AspectRatio(
                            aspectRatio:
                                _videoPlayerController.value.aspectRatio,
                            child: Chewie(
                              controller: _chewieController!,
                            ),
                          ),
                          pro.listVideModel.isEmpty
                              ? CircularProgressIndicator()
                              : Positioned(
                                  bottom: 5,
                                  left: 10,
                                  right: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppBarVideoWidget(
                                        title:
                                            '${pro.listVideModel[0].data.children[0].data.subredditNamePrefixed.name}',
                                        image:
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJO1wS3nRnTIRLp5iGNZxVJOilmUrkXB9UA&s',
                                      ),
                                      SizedBox(
                                        height: .63.sh,
                                      ),
                                      // Spacer(),
                                      TitleCardVideo(
                                        name: '${pro.listVideModel[0].data.children[0].data.author}',
                                        image:
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJO1wS3nRnTIRLp5iGNZxVJOilmUrkXB9UA&s',
                                        des: pro.listVideModel[0].data
                                            .children[0].data.selftext!,
                                        title:'${pro.listVideModel[0].data.children[0].data.title}',
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: !_videoPlayerController
                                                    .value.isPlaying
                                                ? SvgPicture.asset(
                                                    AppConst.svgPath +
                                                        "play.svg",
                                                    color: AppColors.white,
                                                    height: 20.h,
                                                  )
                                                : SvgPicture.asset(
                                                    AppConst.svgPath +
                                                        "pause.svg",
                                                    color: AppColors.white,
                                                    height: 20.h,
                                                  ),
                                            onPressed: () {
                                              setState(() {
                                                _videoPlayerController
                                                        .value.isPlaying
                                                    ? _videoPlayerController
                                                        .pause()
                                                    : _videoPlayerController
                                                        .play();
                                              });
                                            },
                                          ),
                                          Expanded(
                                            child: VideoProgressIndicator(
                                              _videoPlayerController,
                                              allowScrubbing: true,
                                              colors: const VideoProgressColors(
                                                playedColor: Colors.white,
                                                backgroundColor: Colors.black26,
                                                bufferedColor: Colors.black26,
                                              ),
                                            ),
                                          ),
                                          20.w.horizontalSpace,
                                          Text(
                                            AppConst.formatDuration(
                                                _videoPlayerController
                                                    .value.duration),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          IconButton(
                                            icon: _isMuted
                                                ? SvgPicture.asset(
                                                    AppConst.svgPath +
                                                        "sound-off.svg",
                                                    color: AppColors.white,
                                                    height: 25.h,
                                                  )
                                                : SvgPicture.asset(
                                                    AppConst.svgPath +
                                                        "sound-up.svg",
                                                    color: AppColors.white,
                                                    height: 25.h,
                                                  ),
                                            onPressed: () {
                                              setState(() {
                                                _isMuted = !_isMuted;
                                                _videoPlayerController
                                                    .setVolume(
                                                        _isMuted ? 0.0 : 1.0);
                                              });
                                            },
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                           LikeIconWidget(
                                            numberIcon: '${pro.listVideModel[0].data.children[0].data.ups}',
                                          ),
                                          10.w.horizontalSpace,
                                           IconMessageWidget(
                                            numberComments: '${pro.listVideModel[0].data.children[0].data.numComments}',
                                          ),
                                          const Spacer(),
                                           IconReplyWidget(
                                            numbersReply: '${pro.listVideModel[0].data.children[0].data.score}',
                                          ),
                                        ],
                                      ),
                                      3.h.verticalSpace,
                                    ],
                                  ),
                                ),
                        ],
                      )
                    : const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.white,
                        ),
                      ),
              );
            },
          )),
    );
  }
}
