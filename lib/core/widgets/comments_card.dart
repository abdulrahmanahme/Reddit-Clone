
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit_clone/utils/app_const.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class CommentsCard extends StatelessWidget {
   const CommentsCard(
      {super.key,
      required this.title,
      required this.des,
      required this.imageAuthor,
      required this.time,
    required  this.commentsType,
     required this.subIcon});
  final String imageAuthor;
  final String title;
  final String des;
  final String time;
  final String subIcon;
  final String commentsType;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            7.h.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey[200],
                  backgroundImage:  NetworkImage(
                     imageAuthor),
                ),
                5.w.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('$title', style: AppTextStyle.font14Grey600),
                        5.w.horizontalSpace,
                        Text(time, style: AppTextStyle.font14NormalGrey400),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                              subIcon),
                        ),
                        5.w.horizontalSpace,
                        Text(commentsType, style: AppTextStyle.font14Grey400),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child:  Text(
                 des,
                  style: AppTextStyle.fontSize12),
            ),
            // 10.h.verticalSpace,
            Row(
              children: [
                SizedBox(
                  width: .05.sw,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_sharp,
                    size: 20,
                    color: AppColors.greyColor,
                  ),
                ),
                // 10.w.horizontalSpace,
                IconButton(
                  onPressed: () {},
                  icon: Row(
                    children: [
                      SvgPicture.asset(
                        AppConst.svgPath + 'reply.svg',
                        height: 20.h,
                        color: AppColors.normalGrey,
                      ),
                      10.w.horizontalSpace,
                      Text('Reply', style: AppTextStyle.font14NormalGrey700),
                    ],
                  ),
                ),
                10.w.horizontalSpace,

                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppConst.svgPath + 'award.svg',
                    height: 20.h,
                    color: AppColors.normalGrey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppConst.svgPath + 'arrow-up-thick.svg',
                    height: 20.h,
                    color: AppColors.normalGrey,
                  ),
                ),
                Text('1', style: AppTextStyle.font14NormalGrey700),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppConst.svgPath + 'arrow-down-thick.svg',
                    height: 20.h,
                    color: AppColors.normalGrey,
                  ),
                ),
              ],
            ),
            // 5.h.verticalSpace,
          ],
        ),
      ),
    );
  }
}