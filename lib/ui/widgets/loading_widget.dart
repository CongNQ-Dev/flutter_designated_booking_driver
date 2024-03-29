import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  final double? radius;
  final Color? color;

  const LoadingWidget({Key? key, this.radius = 16, this.color}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      radius: widget.radius!,
      color: widget.color ?? Colors.white,
    );
  }
}
