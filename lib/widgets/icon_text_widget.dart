import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/utils/app_styles.dart';

import '../utils/app_layout.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIcon({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(12),
          vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidth(20)),
          Text(text, style: styles.textStyle),
        ],
      ),
    );
  }
}
