import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reddit_clone/core/widgets/comments_card.dart';
import 'package:reddit_clone/core/widgets/cooments_author_data.dart';
import 'package:reddit_clone/core/widgets/draggable_Icon.dart';
import 'package:reddit_clone/core/widgets/test_from_feild.dart';
import 'package:reddit_clone/utils/app_const.dart';
import '../../model/model/video_model.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({super.key, required this.videoModel});
  final List<VideoModel> videoModel;
  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  final DraggableScrollableController _controller =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.6,
      maxChildSize: 1.0,
      controller: _controller,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              const DraggableIcon(),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommentsAuthorData(
                          imageAuthor:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJO1wS3nRnTIRLp5iGNZxVJOilmUrkXB9UA&s',
                          title:
                              '${widget.videoModel[0].data.children[0].data.subredditNamePrefixed.name}',
                          des:
                              '${widget.videoModel[0].data.children[0].data.title}'),
                      // 10.h.verticalSpace,
                      widget.videoModel[1].data.children.isEmpty
                          ? Container()
                          : SizedBox(
                              height: .9.sh,
                              child: ListView.builder(
                                  itemCount:
                                      widget.videoModel[1].data.children.length,
                                  itemBuilder: (contex, int index) {
                                    return CommentsCard(
                                      likes: widget.videoModel[1].data
                                          .children[index].data.ups,
                                      title:
                                          '${widget.videoModel[1].data.children[index].data.author}',
                                      des:
                                          '${widget.videoModel[1].data.children[index].data.body}',
                                      imageAuthor: widget
                                              .videoModel[1]
                                              .data
                                              .children[index]
                                              .data
                                              .authorFlairRichtext
                                              .isNotEmpty
                                          ? widget
                                              .videoModel[1]
                                              .data
                                              .children[index]
                                              .data
                                              .authorFlairRichtext[0]
                                              .u!
                                          : '',
                                      time: '4mo',
                                      subIcon: AppConst.image,
                                      commentsType: widget
                                              .videoModel[1]
                                              .data
                                              .children[index]
                                              .data
                                              .authorFlairRichtext
                                              .isNotEmpty
                                          ? widget
                                              .videoModel[1]
                                              .data
                                              .children[index]
                                              .data
                                              .authorFlairRichtext[1]
                                              .t!
                                          : '',
                                    );
                                  }),
                            ),
                      Padding(
                        padding:
                            EdgeInsets.only(bottom: 5, left: 10, right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormFieldWithTitleWidget(
                                title: '',
                                hint: 'Add a comments',
                                suffixIconColor: Colors.grey,
                                filled: true,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  color: Color(0xffF2F3F5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: SvgPicture.asset(
                                      AppConst.svgPath + 'nav-arrow-down.svg'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // 5.h.verticalSpace,
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String getTime(utcTimeString) {
    DateTime utcTime = DateTime.parse(utcTimeString);
    DateTime localTime = utcTime.toLocal();
    return localTime.toString();
  }
}
