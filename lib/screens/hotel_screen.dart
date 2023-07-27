import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.60,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: styles.primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 2,
              spreadRadius: 1,
            )
          ]),
      height: 350,
      child: Column(children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/one.jpg'),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade800,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]),
        ),
        const Gap(10),
        Text(
          "Open Space",
          style: styles.headLineStyle2.copyWith(color: styles.kakiColor),
        ),
        const Gap(5),
        Text(
          "London",
          style: styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(9),
        Text(
          "₹4976/night",
          style: styles.headLineStyle3.copyWith(color: Colors.white),
        ),

      ]),
    );
  }
}
