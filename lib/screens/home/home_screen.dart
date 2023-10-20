import 'package:booktickets/screens/home/ticket_view.dart';
import 'package:booktickets/util/app_style.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlineTextStyle3,
                        ),
                        const Gap(2),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineTextStyle,
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/img_1.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentIcons.search_24_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headlineTextStyle4,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          const Gap(30),

          /**
           * Upcoming flight section
           */
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headlineTextStyle2,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        // overlayColor: MaterialStateProperty.all<Color>(
                        //     Colors.grey.shade100),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(5)),
                          overlayColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade300.withAlpha(115)),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20)))),
                      onPressed: () {
                        print("onclick view all");
                      },
                      child: Text("View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor)),
                    ),
                  ],
                ),
              ),

              const Gap(5),

              SizedBox(
                // padding: EdgeInsets.only(left: 20),
                  height: 200,
                  child: ListView(
                    padding: const EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TicketView(),
                      TicketView(),
                    ],
                  )),
            ],
          ),

          const Gap(10),

          /**
           * Hotels section
           */
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headlineTextStyle2,
                ),
                TextButton(
                  style: ButtonStyle(
                    // overlayColor: MaterialStateProperty.all<Color>(
                    //     Colors.grey.shade100),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(5)),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.grey.shade300.withAlpha(115)),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(20)))),
                  onPressed: () {
                    print("onclick view all");
                  },
                  child: Text("View all",
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
