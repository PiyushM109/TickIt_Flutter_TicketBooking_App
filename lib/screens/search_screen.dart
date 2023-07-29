import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickit/utils/app_layout.dart';
import 'package:tickit/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getWidth(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking For?",
            style: styles.headLineStyle1.copyWith(
              color: Colors.black,
              fontSize: AppLayout.getHeight(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              color: Color(0xFFF4F6FD),
            ),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.50,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(7),
                      horizontal: AppLayout.getWidth(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.white,
                  ),
                  child: Center(child: Text("Aireline Tickets")),
                ),
                Container(
                  width: size.width * 0.50,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(7),
                      horizontal: AppLayout.getWidth(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Hotels")),
                ),
                
              ],
            ),
          )
        ,
          )
          ],
      ),
    );
  }
}
