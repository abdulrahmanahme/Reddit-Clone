import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/app_text_styles.dart';

class TitleCardVideo extends StatefulWidget {
  TitleCardVideo(
      {super.key,
      required this.image,
      required this.name,
      required this.des,
      required this.title});
  String image;
  String name;
  String title;
  String des;

  @override
  State<TitleCardVideo> createState() => _TitleCardVideoState();
}

class _TitleCardVideoState extends State<TitleCardVideo> {
  bool _showFullText = false;
  final int maxLength = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(widget.image),
            ),
            5.w.horizontalSpace,
            Text('u/${widget.name}', style: AppTextStyle.font18white500),
            5.w.horizontalSpace,
          ],
        ),
        5.h.verticalSpace,

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(widget.title, style: AppTextStyle.font18white500,
          overflow:TextOverflow.ellipsis ,
          maxLines: 1,),
        ),
        5.h.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  _showFullText
                      ? widget.des
                      : (widget.des.length > maxLength
                          ? widget.des.substring(0, maxLength) + '...'
                          : widget.des),
                  style: AppTextStyle.font14White500,
                  maxLines: !_showFullText? 3:5,
                ),
              ),
              10.w.horizontalSpace,
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showFullText = !_showFullText;
                  });
                },
                child: Text(
                  _showFullText ? 'see less' : 'see more',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
