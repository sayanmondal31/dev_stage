import 'package:flutter/material.dart';
import 'package:widget_test/custom_widget/custom_container.dart';

class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        allowImplicitScrolling: true,
        // dragStartBehavior: DragStartBehavior.start,
        pageSnapping: true,
        // reverse: true,
        controller: PageController(
            initialPage: 1, viewportFraction: 1.0, keepPage: false),
        children: [
          CustomContainer(Colors.green, context),
          CustomContainer(Colors.red, context),
          CustomContainer(Colors.blue, context),
        ],
      ),
    );
  }
}
