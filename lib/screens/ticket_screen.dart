import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:tickit/screens/ticket_view.dart';
import 'package:tickit/utils/app_info_list.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';
import 'package:tickit/widgets/column_layout.dart';
import 'package:tickit/widgets/layout_builder.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
                    Gap(AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: '0055 444 77147',
                          secondtext: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: 'B2SG28',
                          secondtext: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const Layout(
                      sections: 8,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2462",
                                  style: styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            Gap(0),
                            Text(
                              "Payment Method",
                              style: styles.headLineStyle4
                                  .copyWith(color: Colors.black),
                            )
                          ],
                        ),
                        const ColumnLayout(
                          firstText: '₹25000',
                          secondtext: 'Price',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              margin: EdgeInsets.only(left: AppLayout.getHeight(12)),
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(20),
                  horizontal: AppLayout.getWidth(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: 'https://github.com/PiyushM109',
                  drawText: false,
                  color: styles.textColor,
                  width: double.infinity,
                  height: 70,
                ),
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            TicketView(
              ticket: ticketList[0],
            ),
            
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(22),
          top: AppLayout.getScreenHeight()*0.25,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: styles.textColor,
            ),
          ),
        ),
         Positioned(
          right: AppLayout.getHeight(12),
          top: AppLayout.getScreenHeight()*0.25,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}
