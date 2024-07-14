import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reddit_clone/config/app_colors.dart';


class TextFormFieldWithTitleWidget extends StatelessWidget {
  TextFormFieldWithTitleWidget(
      {Key? key,
      this.showBorder = true,
      this.title,
      this.controller,
      this.keyboardType,
      this.textInputAction,
      this.focusNode,
      this.textCapitalization,
      this.autofocus,
      this.obscureText,
      this.suffix,
      this.prefix,
      this.enabled,
      this.hint,
        this.onChange,
      this.validator,
      this.filled,
      this.fillColor,
      this.textColor,
      this.onFieldSubmitted,
      this.errorWidget,
      this.inputFormatters,
      this.prefixIconSize,
      this.suffixIconSize,
      this.maxLines = 1,
      this.enabledBorderColor,
      this.colorHintStyle,
      this.prefixIconColor,
      this.suffixIconColor,
      this.hintStyle,
      this.maxDigit,
      this.borderRadius,
      this.style,
      this.textAlign,
      this.titleFontWeight,
      this.verticalSpaceWidget,
      this.containerWidget,
      this.borderWidth,
      this.contentPadding})
      : super(key: key);
  final String? title;
  final TextEditingController? controller;
  final double? prefixIconSize;
  final double? suffixIconSize;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;
  final onChange;
  final bool? autofocus;
  final bool? obscureText;
  final Widget? suffix;
  final Widget? prefix;
  final int? maxDigit;
  final bool? enabled;
  final String? hint;
  final String? Function(String?)? validator;
  final bool? filled;
  final Color? fillColor;
  final Color? textColor;
  final Color? enabledBorderColor;
  final void Function(String)? onFieldSubmitted;
  final Widget? errorWidget;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final bool showBorder;
  final Color? colorHintStyle;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final TextStyle? hintStyle;
  final double? borderRadius;
  final TextStyle? style;
  final FontWeight? titleFontWeight;
  final double? verticalSpaceWidget;
  final Widget? containerWidget;
  final double? borderWidth;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     
        TextFormField(
          maxLines: maxLines,
          controller: controller,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          autofocus: autofocus ?? false,
          enabled: enabled ?? true,
          onFieldSubmitted: onFieldSubmitted,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          focusNode: focusNode,
          validator: validator,
          onChanged:onChange ,
          maxLength: maxDigit,

          inputFormatters: inputFormatters,
          style: TextStyle(color: textColor),
          textAlign: textAlign??TextAlign.start,
          decoration: InputDecoration(
            isDense: true,
            counterText: "",

            contentPadding:
                EdgeInsets.symmetric(
                  vertical: 8.h,
                  horizontal: 15.w,
                ),
            prefixIconConstraints: prefixIconSize == null
                ? null
                : BoxConstraints(
                    maxHeight: prefixIconSize!,
                    maxWidth: prefixIconSize!,
                  ),
            suffixIconConstraints: suffixIconSize == null
                ? null
                : BoxConstraints(
                    maxHeight: suffixIconSize!,
                    maxWidth: suffixIconSize!,
                  ),
            filled: filled,
            fillColor: Color(0xffF2F3F5),
            prefixIconColor: prefixIconColor,
            suffixIconColor: suffixIconColor,
            prefixIcon: prefix,
            suffixIcon: suffix,
            hintText: ' $hint',
            hintStyle: hintStyle ??
                TextStyle(
                  color: AppColors.greyColor.withOpacity(.7),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
            border:
             OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide:BorderSide.none,
            ),
           
          ),
        ),
        errorWidget ?? const SizedBox.shrink(),
      ],
    );
  }
}
