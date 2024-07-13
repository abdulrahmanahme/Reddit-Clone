import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class CommentsAuthorData extends StatelessWidget {
  const CommentsAuthorData(
      {super.key,
      required this.title,
      required this.des,
      required this.imageAuthor});
  final String imageAuthor;
  final String title;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade50,
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: NetworkImage(imageAuthor),
                ),
                5.w.horizontalSpace,
                Expanded(
                  child: Text('u/$title', style: AppTextStyle.font14black600),
                ),
              ],
            ),
            5.h.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text('$des', style: AppTextStyle.font14black700),
            ),
            10.h.verticalSpace,
          ],
        ),
      ),
    );
  }
}
