import 'package:booktickets/util/app_layout.dart';
import 'package:booktickets/util/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Material(
      color: Styles.primaryColor,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(24),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
          width: size.width * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const Image(
                      image: AssetImage("assets/images/one.png"),
                      fit: BoxFit.cover),
                ),
              ),
              const Gap(10),
              Text(
                "Open space",
                style: Styles.headlineTextStyle2
                    .copyWith(color: Color(0xFFd2bdb6)),
              ),
              const Gap(5),
              Text(
                "London",
                style: Styles.headlineTextStyle3.copyWith(color: Colors.white),
              ),
              const Gap(8),
              Text(
                "\$40/night",
                style:
                    Styles.headlineTextStyle.copyWith(color: Color(0xFFd2bdb6)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
