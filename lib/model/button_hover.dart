// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonHover extends StatefulWidget {
  Color backGroundColor;
  Color hoverColor;
  double height;
  double width;
  IconData icon;
  Color iconBackgroundColor;
  Color iconHoverColor;
  double iconSize;

  void Function()? onTap;
  ButtonHover({
    Key? key,
    required this.onTap,
    required this.backGroundColor,
    required this.hoverColor,
    required this.height,
    required this.width,
    required this.icon,
    required this.iconSize,
    required this.iconBackgroundColor,
    required this.iconHoverColor,
  }) : super(key: key);

  @override
  State<ButtonHover> createState() => _ButtonHoverState();
}

class _ButtonHoverState extends State<ButtonHover> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (h) {
        setState(() {
          hover = true;
        });
      },
      onExit: (h) {
        setState(() {
          hover = false;
        });
      },
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          width: widget.width,
          height: widget.height,
          color: hover ? widget.hoverColor : widget.backGroundColor,
          child: Center(
            child: Icon(
              widget.icon,
              size: widget.iconSize,
              color: hover ? widget.iconHoverColor : widget.iconBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
