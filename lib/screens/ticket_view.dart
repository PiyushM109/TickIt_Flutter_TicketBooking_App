import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';
import 'package:tickit/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({
    super.key,
    required this.ticket,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(166),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(12)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(15),
                  top: AppLayout.getHeight(16),
                  bottom: AppLayout.getHeight(17)),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: styles.headLineStyle3.copyWith(
                          color: isColor == null ? Colors.white : Colors.black),
                    ),
                    const Spacer(),
                    ThickContainer(color: isColor == null ? Colors.white : Colors.black),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.black,
                                          )),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color:
                                  isColor == null ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )),
                    ThickContainer(color:isColor == null ? Colors.white : Colors.black,),
                    const Spacer(),
                    Text(
                      ticket['to']['code'],
                      style: styles.headLineStyle3.copyWith(
                          color: isColor == null ? Colors.white : Colors.black),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(3)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        ticket['from']['name'],
                        style: styles.headLineStyle4.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      ticket['flying_time'],
                      style: styles.headLineStyle4.copyWith(
                        color: isColor == null ? Colors.white : Colors.black,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      child: Text(
                        ticket['to']['name'],
                        style: styles.headLineStyle4.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                    ),
                  ],
                )
              ]),
            ),
            Container(
              color: isColor == null ? Color(0xFFF37B67) : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:  Colors.white ,
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                 const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ))),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFFF37B67) : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?AppLayout.getHeight(21):0),
                  bottomRight: Radius.circular(isColor==null?AppLayout.getHeight(21):0),
                ),
              ),
              padding: EdgeInsets.only(
                bottom: AppLayout.getHeight(15),
                top: AppLayout.getHeight(10),
                right: AppLayout.getHeight(15),
                left: AppLayout.getHeight(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: styles.headLineStyle3
                                .copyWith(color: isColor == null ? Colors.white : Colors.black,),
                          ),
                          Gap(AppLayout.getHeight(4)),
                          Text(
                            "Date",
                            style: styles.headLineStyle4
                                .copyWith(color: isColor == null ? Colors.white : Colors.black,),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: styles.headLineStyle3
                                .copyWith(color: isColor == null ? Colors.white : Colors.black,),
                          ),
                          Gap(AppLayout.getHeight(4)),
                          Text(
                            "Departure Time",
                            style: styles.headLineStyle4
                                .copyWith(color: isColor == null ? Colors.white : Colors.black,),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: styles.headLineStyle3
                                .copyWith(color: isColor == null ? Colors.white : Colors.black,),
                          ),
                          Gap(AppLayout.getHeight(4)),
                          Text(
                            "Number",
                            style: styles.headLineStyle4
                                .copyWith(color: isColor == null ? Colors.white : Colors.black,),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
