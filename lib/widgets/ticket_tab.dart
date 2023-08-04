import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String text1;
  final String text2;
  const AppTicketTabs({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * 0.50,
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(7),
                  horizontal: AppLayout.getWidth(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(child: Text(text1)),
            ),
            Container(
              width: size.width * 0.50,
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(7),
                  horizontal: AppLayout.getWidth(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.transparent,
              ),
              child: Center(child: Text(text2)),
            ),
          ],
        ),
      ),
    );
  }
}
