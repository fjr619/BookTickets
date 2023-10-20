import 'package:booktickets/util/app_layout.dart';
import 'package:booktickets/util/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    final String imagePath = "assets/images/${hotel['image']}";
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
                  child: Image(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover),
                ),
              ),
              const Gap(10),
              Text(
                hotel['place'],
                style: Styles.headlineTextStyle2
                    .copyWith(color: Color(0xFFd2bdb6)),
              ),
              const Gap(5),
              Text(
                hotel['destination'],
                style: Styles.headlineTextStyle3.copyWith(color: Colors.white),
              ),
              const Gap(8),
              Text(
                "\$${hotel['price']}/night",
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
