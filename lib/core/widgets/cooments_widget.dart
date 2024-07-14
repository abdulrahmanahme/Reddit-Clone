import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reddit_clone/core/widgets/comments_card.dart';
import 'package:reddit_clone/core/widgets/cooments_author_data.dart';
import 'package:reddit_clone/core/widgets/draggable_Icon.dart';
import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({super.key});

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
                      const CommentsAuthorData(
                        imageAuthor:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJO1wS3nRnTIRLp5iGNZxVJOilmUrkXB9UA&s',
                        title: 'abdoAhmed',
                        des:
                            'Europeans are the ones who loves Racism most 😂😂😂 This video would be all over in sub if Turkish people did this 😂😂',
                      ),
                      10.h.verticalSpace,
                      SizedBox(
                        height: .5.sh,
                        child: ListView.builder(
                            itemCount: 500,
                            itemBuilder: (contex, int index) {
                              return CommentsCard(
                                title: 'Abdo Ahmed',
                                des:
                                    'Europeans are the ones who loves Racism most 😂😂😂 This video would be all over in sub if Turkish people did this 😂😂',
                                imageAuthor:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJO1wS3nRnTIRLp5iGNZxVJOilmUrkXB9UA&s',
                                time: '4mo',
                                subIcon:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJO1wS3nRnTIRLp5iGNZxVJOilmUrkXB9UA&s',
                                commentsType: 'Vistior',
                              );
                            }),
                      ),
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
}
