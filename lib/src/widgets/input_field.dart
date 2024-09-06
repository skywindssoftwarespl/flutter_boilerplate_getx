import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/value/app_colors.dart';
import '../../core/value/dimens.dart';
import '../../core/value/font_styles.dart';

class InputField extends StatelessWidget {
  //passing props in the Constructor.
  const InputField(
      {super.key,
      this.width,
      this.hint,
      this.labelText,
      this.obscureText,
      this.autoFocus,
      this.textInputType,
      this.textFieldColor,
      this.verticalMargin = 4.0,
      this.horizontalMargin = 4.0,
      this.textStyle,
      this.validateFunction,
      this.onSaved,
      this.hintStyle,
      this.labelStyle,
      this.maxLength,
      this.controller,
      this.errorText,
      this.focusNode,
      this.textCapitalization,
      this.icon,
      this.suffixIcon,
      this.maxLines,
      this.textAlign,
      this.textInputAction,
      this.readOnly,
      this.onTap,
      this.fillColor,
      this.inputFormatters});

  final double? width;
  final String? hint;
  final String? labelText;
  final TextInputType? textInputType;
  final Color? textFieldColor;
  final bool? obscureText, autoFocus;
  final double verticalMargin;
  final double horizontalMargin;
  final TextStyle? textStyle, hintStyle, labelStyle;
  final FormFieldValidator<String>? validateFunction;
  final FormFieldSetter<String>? onSaved;
  final int? maxLength;
  final int? maxLines;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final String? errorText;
  final Widget? icon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final bool? readOnly;
  final GestureTapCallback? onTap;
  final Color? fillColor;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? fullWidth,
        padding: EdgeInsets.symmetric(vertical: verticalMargin, horizontal: horizontalMargin),
        child: TextField(
            key: key,
            obscureText: obscureText ?? false,
            keyboardType: textInputType,
            onSubmitted: onSaved,
            autofocus: autoFocus ?? false,
            maxLength: maxLength,
            maxLines: maxLines ?? 1,
            focusNode: focusNode,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            controller: controller,
            textAlign: textAlign ?? TextAlign.start,
            textInputAction: textInputAction,
            style: textStyle ?? bodyLarge,
            readOnly: readOnly ?? false,
            onTap: onTap,
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: fillColor ?? AppColors.onBackground.withOpacity(0.05),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(circularRadius)),
                hintText: hint,
                hintStyle: hintStyle ?? bodyMedium?.copyWith(color: AppColors.onSurface.withOpacity(.3)),
                labelText: labelText,
                labelStyle: labelStyle ?? TextStyle(color: AppColors.primary.withOpacity(.8)),
                prefixIcon: icon,
                suffixIcon: suffixIcon,
                errorText: errorText,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
            inputFormatters: inputFormatters));
  }
}
