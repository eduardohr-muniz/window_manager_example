// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'button_hover.dart';

class HeaderWindow extends StatelessWidget {
  const HeaderWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DragToMoveArea(
      child: Container(
        height: 21,
        color: Colors.black.withAlpha(200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                ButtonHover(
                  backGroundColor: Colors.transparent,
                  hoverColor: Colors.grey.withOpacity(0.4),
                  height: 23,
                  width: 30,
                  onTap: () {
                    windowManager.minimize();
                  },
                  icon: Icons.minimize_outlined,
                  iconBackgroundColor: const Color(0XAAdcddde),
                  iconHoverColor: Colors.white,
                  iconSize: 18,
                ),
                ButtonHover(
                  backGroundColor: Colors.transparent,
                  hoverColor: Colors.grey.withOpacity(0.4),
                  height: 23,
                  width: 30,
                  onTap: () {
                    windowManager.maximize();
                  },
                  icon: Icons.crop_square,
                  iconBackgroundColor: const Color(0XAAdcddde),
                  iconHoverColor: Colors.white,
                  iconSize: 18,
                ),
                ButtonHover(
                  backGroundColor: Colors.transparent,
                  hoverColor: Colors.red,
                  height: 23,
                  width: 30,
                  onTap: () {
                    windowManager.close();
                  },
                  icon: Icons.close,
                  iconBackgroundColor: const Color(0XAAdcddde),
                  iconHoverColor: Colors.white,
                  iconSize: 18,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
