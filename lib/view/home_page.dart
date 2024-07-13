import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reddit_clone/core/widgets/cooments_widget.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DraggableScrollableController _controller =
      DraggableScrollableController();
  double _panelPosition = 0.0;
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.network(
      'https://v.redd.it/gvuvwpvo4ubd1/DASHPlaylist.mpd?a=1723478534%2CMmQ3N2ZmNmUzOTZmMmQyNjg2OGUzNmZhYTA0ZjFlYTc5OTg3MGZhOTgxOGQ3NjIxODU1Nzc2N2E1MzFhYjcwNg%3D%3D&amp;v=1&amp;f=sd',
    )..initialize().then((_) {
        setState(() {});
        _videoController.play();
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _videoController.value.isInitialized
                ? LayoutBuilder(
                    builder: (context, constraints) {
                      double minHeight = 200;
                      double maxHeight = constraints.maxHeight * 1;
                      double videoHeight = minHeight +
                          (_panelPosition * (maxHeight - minHeight));
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: maxHeight,
                        child: GestureDetector(
                          onTap: () {
                            showMaterialModalBottomSheet(
                              context: context,
                              enableDrag: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) => const CommentsWidget(),
                            );
                          },
                          child: VideoPlayer(
                            _videoController,
                          ),
                        ),
                      );
                    },
                  )
                : CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
