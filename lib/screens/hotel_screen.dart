import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({
    super.key,
    required this.hotel,
  });

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
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(hotel['image']),
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
          hotel['place'].toString(),
          style: styles.headLineStyle2.copyWith(color: styles.kakiColor),
        ),
        const Gap(5),
        Text(
          hotel['destination'].toString(),
          style: styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(9),
        Text(
          "₹${hotel['price'].toString()}",
          style: styles.headLineStyle3.copyWith(color: Colors.white),
        ),
      ]),
    );
  }
}
