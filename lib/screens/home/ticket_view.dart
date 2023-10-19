import 'package:booktickets/util/app_layout.dart';
import 'package:flutter/material.dart';

import '../../util/app_style.dart';
import '../widget/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
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
                                  .copyWith(color: Colors.white), textAlign: TextAlign.end))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
