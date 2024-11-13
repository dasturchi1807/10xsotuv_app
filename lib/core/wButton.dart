import 'package:flutter/material.dart';

class WButton extends StatelessWidget {
  final String? text;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final double? borderRadius;
  final TextStyle? textStyle;
  final VoidCallback onTap;

  const WButton({
    super.key,
    this.text,
    this.width,
    this.height,
    this.margin,
    this.backgroundColor,
    this.borderRadius,
    this.textStyle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        child: Center(
            child: Text(
              text ?? "",
              style: textStyle,
            )),
      ),
    );
  }
}
