import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';
import '../../utils/app_const.dart';

class IconMessageWidget extends StatelessWidget {
  const IconMessageWidget({super.key, required this.numberComments});
  final String numberComments;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        border: Border.all(width: 1, color: Colors.grey.shade800),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppConst.svgPath + 'message.svg',
                height: 15.h,
                color: AppColors.white,
              ),
            ),
            5.w.horizontalSpace,
            Text(numberComments, style: AppTextStyle.font16White700),
          ],
        ),
      ),
    );
  }
}
