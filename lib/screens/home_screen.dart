import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/screens/hotel_screen.dart';
import 'package:tickit/screens/ticket_view.dart';
import 'package:tickit/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: AssetImage(
                            "assets/images/logo.png",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(20),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          "Search",
                          style: styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print("You are tapped");
                      },
                      child: Text(
                        "View all",
                        style: styles.textStyle
                            .copyWith(color: styles.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 24),
            child: Row(children: [
              TicketView(),
              TicketView(),
            ]),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "View all",
                    style:
                        styles.textStyle.copyWith(color: styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const Gap(25),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 24),
            child: Row(children: [
              HotelScreen(),
              HotelScreen(),
              HotelScreen(),
              HotelScreen(),
              HotelScreen(),
            ]),
          ),
        ],
      ),
    );
  }
}
