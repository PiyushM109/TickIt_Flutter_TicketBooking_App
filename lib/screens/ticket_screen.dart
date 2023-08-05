import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/screens/ticket_view.dart';
import 'package:tickit/utils/app_info_list.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';

import '../widgets/ticket_tab.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: styles.headLineStyle1.copyWith(
                color: Colors.black,
                fontSize: 35,
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(
              text1: 'Upcoming',
              text2: 'Previous',
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: AppLayout.getHeight(12)),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text("Flutter DB", style: styles.headLineStyle3,),
                            Gap(AppLayout.getHeight(5)),
                            Text("Passenger", style: styles.headLineStyle3,)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
