import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_text_styles.dart';

class AppBarVideoWidget extends StatelessWidget {
  const AppBarVideoWidget(
      {super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.close,
            size: 25,
            color: Colors.white,
          ),
        ),
        const Spacer(),

        CircleAvatar(
          radius: 18,
          backgroundColor: Colors.grey[200],
          backgroundImage: NetworkImage(image),
        ),
        5.w.horizontalSpace,
        Text('u/$title', style: AppTextStyle.font18white500),
        // 5.w.horizontalSpace,
        const Spacer(),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.more_vert,
            size: 25,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
