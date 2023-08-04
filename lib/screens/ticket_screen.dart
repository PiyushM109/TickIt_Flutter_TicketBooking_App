import 'package:flutter/material.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(children: [
        ListView(
          children: [
            Text(
              "Tickets",
              style: styles.headLineStyle1.copyWith(
                color: Colors.black,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
