import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
    required this.title,
    this.opacity = 1,
    this.hightSize = 7,
    this.marginTop = 20,
    this.marginBottom = 50,
    this.color = Colors.blue,
    this.colorText = Colors.white,
    this.fontSize = 22,
    required this.onTap,
  });
  final String title;
  final double opacity;
  final double hightSize;
  final double marginTop;
  final double marginBottom;
  final Color color;
  final Color colorText;
  final double fontSize;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        onTap();
      },
      child: Container(
        height: SizeConst.height(hightSize, context),
        margin: EdgeInsets.only(top: marginTop, bottom: marginBottom),
        decoration: BoxDecoration(
          color: color.withOpacity(opacity),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: fontSize,
                color: colorText),
          ),
        ),
      ),
    );
  }
}
