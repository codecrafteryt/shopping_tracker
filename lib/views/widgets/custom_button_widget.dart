import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;
  final Color? borderColor;
  final double? borderWidth;
  final double? elevation;
  final double? width;
  final double? height;

  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color.fromRGBO(20, 174, 92, 0.99),
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
    this.textStyle = const TextStyle(fontSize: 16, color: Colors.white),
    this.borderColor,
    this.borderWidth,
    this.elevation = 2.0,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderColor != null && borderWidth != null
                ? BorderSide(color: borderColor!, width: borderWidth!)
                : BorderSide.none,
          ),
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
