import 'package:flutter/material.dart';

class OnHoverToToolTipPopUp extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final EdgeInsetsGeometry? padding;
  final Widget toolTipPopUpContent;
  final Color? toolTipPopUpColor;
  final Offset? offset;
  final BorderRadius? borderRadius;
  final double? elevation;


  const OnHoverToToolTipPopUp({
    Key? key,
    required this.builder,
    this.padding = const EdgeInsets.all(8.0),
    required this.toolTipPopUpContent,
    this.offset = const Offset(0, 25),
    this.toolTipPopUpColor = Colors.white,
    this.borderRadius,
    this.elevation = 4.0,
  }) : super(key: key);

  @override
  State<OnHoverToToolTipPopUp> createState() => _OnHoverToToolTipPopUpState();
}

class _OnHoverToToolTipPopUpState extends State<OnHoverToToolTipPopUp> {
  bool isHovered = false;
  OverlayEntry? overlayEntry;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      cursor: SystemMouseCursors.click,
      child: Container(
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });

    if (isHovered) {
      final RenderBox renderBox = context.findRenderObject() as RenderBox;
      final Offset offset = renderBox.localToGlobal(Offset.zero);
      final Offset adjustedOffset = offset + widget.offset!;

      overlayEntry = OverlayEntry(
        builder: (context) {
          return Positioned(
            left: adjustedOffset.dx,
            top: adjustedOffset.dy,
              child: Material(
                elevation: widget.elevation!,
                color: widget.toolTipPopUpColor,
                borderRadius: widget.borderRadius??BorderRadius.circular(10),
                child: Padding(
                  padding: widget.padding!,
                  child: widget.toolTipPopUpContent,
                ),
              ),
            // ),
          );
        },
      );

      Overlay.of(context).insert(overlayEntry!);
    } else {
      overlayEntry?.remove();
    }
  }
}
