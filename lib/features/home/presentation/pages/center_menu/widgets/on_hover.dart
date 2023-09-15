import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;

  const OnHover({Key? key, required this.builder, this.decoration, this.padding}) : super(key: key);

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      cursor: SystemMouseCursors.click,
      child: Container(
        padding: widget.padding,
        decoration: isHovered ? widget.decoration : null,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
