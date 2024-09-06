import 'package:flutter/material.dart';

import '../../core/value/app_colors.dart';
import '../../core/value/dimens.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(this.label, {super.key, this.callBack, this.background, this.textStyle});

  final String label;
  final VoidCallback? callBack;
  final Color? background;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callBack,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            foregroundColor: AppColors.white,
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(circularRadius))),
        child: Text(label));
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(this.label, {super.key, this.callBack, this.background, this.textStyle});

  final String label;
  final VoidCallback? callBack;
  final Color? background;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callBack,
        style: ElevatedButton.styleFrom(
            side: BorderSide(width: 2.0, color: AppColors.primary),
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(circularRadius))),
        child: Text(label));
  }
}
