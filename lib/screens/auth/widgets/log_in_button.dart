import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
    required this.text,
    this.colorText = Colors.white,
    this.containerOpacity = 1,
    this.borderOpacity = 1,
    this.hightSize = 7,
    this.fontSize = 22,
    required this.onTap,
  });
  final String text;
  final double containerOpacity;
  final double borderOpacity;
  final double hightSize;
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
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(containerOpacity),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withOpacity(borderOpacity)),
        ),
        child: Center(
          child: Text(
            text,
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
