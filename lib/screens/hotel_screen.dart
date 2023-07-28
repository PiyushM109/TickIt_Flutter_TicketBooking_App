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
      height : AppLayout.getHeight(350),
      margin:  EdgeInsets.symmetric(
        horizontal: AppLayout.getHeight(10),
      ),
      padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(17)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
          color: styles.primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 2,
              spreadRadius: 1,
            )
          ]),
      child: Column(children: [
        Container(
          height: AppLayout.getHeight(180),
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
        Gap(AppLayout.getHeight(10)),
        Text(
          hotel['place'].toString(),
          style: styles.headLineStyle2.copyWith(color: styles.kakiColor),
        ),
         Gap(AppLayout.getHeight(5)),
        Text(
          hotel['destination'].toString(),
          style: styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        Gap(AppLayout.getHeight(9)),
        Text(
          "₹${hotel['price'].toString()}",
          style: styles.headLineStyle3.copyWith(color: Colors.white),
        ),
      ]),
    );
  }
}
