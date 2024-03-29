import 'package:flutter/material.dart';
import 'package:secure_ride_home/res/colors.dart';

import '/res/theme/theme_service.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Function() onPressed;
  final double? radius;
  final double? width;
  final double? height;
  final int? elevation;
  final bool? isEnable;
  final Color? background;
  final bool? isLoading;

  CustomButton(
      {required this.text,
      this.textStyle,
      required this.onPressed,
      this.radius = 14,
      this.width = 120,
      this.height = 40,
      this.elevation = 0,
      this.isEnable = false,
      this.isLoading = false,
      this.background});

  @override
  State<StatefulWidget> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.isEnable! ? widget.onPressed() : null,
      child: Container(
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.isEnable!
              ? widget.background ?? getColor().themeColorPrimary
              : getColor().textColor929394,
          borderRadius: BorderRadius.all(Radius.circular(widget.radius!)),
        ),
        child: Center(
          child: widget.isLoading == true
              ? const CircularProgressIndicator(color: colorWhite)
              : Text(
                  widget.text,
                  style: widget.textStyle,
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
