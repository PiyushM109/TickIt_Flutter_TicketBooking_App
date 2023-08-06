import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/utils/app_styles.dart';

import '../utils/app_layout.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondtext;
  const ColumnLayout({
    super.key,
    required this.firstText,
    required this.secondtext,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: styles.headLineStyle3.copyWith(color: Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondtext,
          style: styles.headLineStyle4.copyWith(color: Colors.black),
        )
      ],
    );
  }
}
