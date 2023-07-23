import 'package:flutter/material.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)
                  )),
              padding: const EdgeInsets.all(15),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "NYC",
                      style: styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "London",
                      style: styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
