import 'package:flutter/material.dart';
import 'package:tickit/utils/app_styles.dart';

class ListHead extends StatelessWidget {
  final String bigText;
  final String smallText;
  const ListHead({
    super.key,
    required this.bigText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: styles.textStyle.copyWith(color: styles.primaryColor),
          ),
        )
      ],
    );
  }
}
