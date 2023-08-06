import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:tickit/screens/ticket_view.dart';
import 'package:tickit/utils/app_info_list.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';
import 'package:tickit/widgets/column_layout.dart';
import 'package:tickit/widgets/layout_builder.dart';

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
            const SizedBox(
              height: 1,
            ),
            Container(
              margin: EdgeInsets.only(left: AppLayout.getHeight(12)),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: 'Flutter DB',
                          secondtext: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: '52217875919',
                          secondtext: 'Passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const Layout(
                      sections: 8,
                      isColor: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
