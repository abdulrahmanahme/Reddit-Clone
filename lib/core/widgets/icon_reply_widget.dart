import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';
import '../../utils/app_const.dart';

class IconReplyWidget extends StatelessWidget {
  const IconReplyWidget({super.key, required this.numbersReply});
  final String numbersReply;
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
                AppConst.svgPath + 'reply2.svg',
                height: 25.h,
                color: AppColors.white,
              ),
            ),
            2.w.horizontalSpace,
            Text(numbersReply, style: AppTextStyle.font16White700),
          ],
        ),
      ),
    );
  }
}
