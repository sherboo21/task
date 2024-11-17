import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? enabledColor, fillColor, hintColor, focusColor, controllerColor;
  final double? tPadding, hintSize, bPadding;
  final double? borderRadius;
  final TextInputType? type;
  final Function()? onTap;
  final dynamic Function(dynamic)? onFieldSubmitted;
  final Function(String)? onChanged;
  final bool? isPassword;
  final int? maxLine, hintMaxLine;
  final String? Function(String?)? validate;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final Function()? suffixPressed;
  final bool? isClickable;
  final bool? autocorrect, isFill;
  final TextStyle? textStyle;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final bool? enabled;
  final Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;

  const AppTextField({
    super.key,
    this.borderRadius,
    this.maxLine,
    this.textAlign,
    this.controller,
    this.type,
    this.focusNode,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.textStyle,
    this.isPassword,
    this.validate,
    this.hint,
    this.prefix,
    this.suffix,
    this.suffixPressed,
    this.isClickable,
    this.autocorrect,
    this.focusColor,
    this.enabledColor,
    this.tPadding,
    this.enabled,
    this.isFill,
    this.inputFormatters,
    this.fillColor,
    this.hintColor,
    this.hintSize,
    this.bPadding,
    this.onEditingComplete,
    this.controllerColor,
    this.hintMaxLine,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      cursorColor: AppColors.mainAppColor,
      style: TextStyle(
          color: controllerColor ?? AppColors.textColor,
          fontSize: 14.sp,
          fontWeight: fontWeight ?? FontWeight.w400),
      textAlign: textAlign ?? TextAlign.start,
      decoration: InputDecoration(
        errorMaxLines: 5,
        filled: isFill ?? true,
        fillColor: fillColor ?? AppColors.scaffoldColor,
        errorStyle: TextStyle(fontSize: 10.sp, color: Colors.red),
        contentPadding:
            EdgeInsets.only(top: tPadding ?? 0, bottom: bPadding ?? 0),
        focusedBorder: (enabled == true)
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                  color: focusColor ?? AppColors.mainAppColor,
                ),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: BorderSide(
                  color: focusColor ?? AppColors.mainAppColor,
                ),
              ),
        enabledBorder: (enabled == true)
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                  color: enabledColor ?? Colors.transparent,
                ),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: BorderSide(
                  color: enabledColor ?? Colors.transparent,
                ),
              ),
        border: (enabled == true)
            ? const UnderlineInputBorder(
                borderSide: BorderSide(),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: const BorderSide(),
              ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          borderSide: const BorderSide(color: Colors.red),
        ),
        hintText: hint,
        hintMaxLines: hintMaxLine ?? 500,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: hintSize ?? 12.sp,
          color: hintColor ?? AppColors.subTitleColor,
        ),
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
      controller: controller,
      keyboardType: type,
      obscureText: isPassword ?? false,
      enabled: isClickable ?? true,
      focusNode: focusNode,
      onTap: onTap,
      validator: validate,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      maxLines: maxLine,
      inputFormatters: inputFormatters,
    );
  }
}
