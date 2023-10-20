import 'package:booktickets/util/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../util/app_style.dart';
import '../widget/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        child: Column(
          children: [
            //showing the part of the card/ticket
            Container(
              padding: const EdgeInsets.all(16),
              height: 100,
              decoration: BoxDecoration(
                  color: Styles.blueColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headlineTextStyle3
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      thickContainer,
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => Text(
                                              "-",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                      color: Colors.white),
                                            )),
                                  );
                                },
                              )),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      thickContainer,
                      const Spacer(),
                      Text(
                        "LDN",
                        style: Styles.headlineTextStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text("New-York",
                              style: Styles.headlineTextStyle4
                                  .copyWith(color: Colors.white))),
                      Text(
                        "8H 30M",
                        style: Styles.headlineTextStyle4
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                          width: 100,
                          child: Text("London",
                              style: Styles.headlineTextStyle4
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.end))
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
                child:
                Container(
                    decoration: BoxDecoration(
                        color: Styles.orangeColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Styles.bgColor,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 15)
                                            .floor(),
                                        (index) => Container(
                                            width: 5,
                                            height: 1,
                                            decoration: const BoxDecoration(
                                                color: Colors.white))),
                                  );
                                },
                              ),
                            )),
                            Container(
                              height: 20,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Styles.bgColor,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10))),
                            ),
                          ],
                        ),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("1 MAY",
                                      style: Styles.headlineTextStyle3
                                          .copyWith(color: Colors.white)),
                                  const Gap(5),
                                  Text("DATE",
                                      style: Styles.headlineTextStyle4
                                          .copyWith(color: Colors.white))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("08:00 AM",
                                      style: Styles.headlineTextStyle3
                                          .copyWith(color: Colors.white)),
                                  const Gap(5),
                                  Text("Depature Time",
                                      style: Styles.headlineTextStyle4
                                          .copyWith(color: Colors.white))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("23",
                                      style: Styles.headlineTextStyle3
                                          .copyWith(color: Colors.white)),
                                  const Gap(5),
                                  Text("Number",
                                      style: Styles.headlineTextStyle4
                                          .copyWith(color: Colors.white))
                                ],
                              )
                            ],
                          ),
                        ))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
