import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';
import 'package:tickit/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/logo.png')),
                ),
              ),
              Gap(AppLayout.getHeight(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book tickets",
                    style: styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(5),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getWidth(5)),
                      const Text(
                        "Premium status",
                        style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gap(AppLayout.getWidth(5)),
                    ]),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: styles.textStyle.copyWith(
                        color: styles.primaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade400,
          ),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                right: AppLayout.getWidth(-30),
                top: AppLayout.getHeight(-30),
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(70),
                  vertical: AppLayout.getHeight(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 30,
                        color: styles.primaryColor,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10),vertical: AppLayout.getHeight(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
              color: styles.bgColor,
              boxShadow: [BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                spreadRadius: 10,
              )]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(18)),
                Text(
                  "19802",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: styles.textColor),
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "08 Aug 2023",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "23 042",
                      style: styles.headLineStyle2,
                    ),
                    Text(
                      "Air Asia",
                      style: styles.headLineStyle2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "Received From",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const Layout(sections: 8, isColor: true,),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "24",
                      style: styles.headLineStyle2,
                    ),
                    Text(
                      "Air India",
                      style: styles.headLineStyle2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "Received From",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
               Gap(AppLayout.getHeight(12)),
                const Layout(sections: 8, isColor: true,),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "52 340",
                      style: styles.headLineStyle2,
                    ),
                    Text(
                      "Indi Go",
                      style: styles.headLineStyle2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "Received From",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const Layout(sections: 8, isColor: true,),
                Gap(AppLayout.getHeight(15)),
                Center(
                  child: Text(
                    "How to get more miles",
                    style: styles.headLineStyle4.copyWith(fontSize: 17),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
