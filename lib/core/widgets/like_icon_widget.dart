import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit_clone/config/app_text_styles.dart';

import '../../config/app_colors.dart';
import '../../utils/app_const.dart';

class LikeIconWidget extends StatelessWidget {
  const LikeIconWidget({super.key, required this.numberIcon});
  final String numberIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        border: Border.all(width: 1, color: Colors.grey.shade800),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppConst.svgPath + 'arrow-up-thick.svg',
                height: 15.h,
                color: AppColors.white,
              ),
            ),
            5.w.horizontalSpace,
            Text(numberIcon, style: AppTextStyle.font16White700),
            10.w.horizontalSpace,
            Container(
              height: 25.h,
              width: 1.w,
              color: AppColors.white,
            ),
            10.w.horizontalSpace,
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppConst.svgPath + 'arrow-down-thick.svg',
                height: 15.h,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
