import 'package:flutter/material.dart';
import 'package:widget_test/custom_widget/custom_container.dart';

Widget CustomTable(BuildContext context) {
  return Table(
    border: TableBorder(
      horizontalInside: BorderSide(width: 3),
    ),
    // columnWidths: {1: FractionColumnWidth(.2)},
    columnWidths: {1: FractionColumnWidth(0.30)},

    children: [
      TableRow(
        children: [
          CustomContainerOne(Colors.green, context),
          CustomContainerOne(Colors.red, context),
          CustomContainerOne(Colors.blue, context),
        ],
      ),
      TableRow(
        children: [
          CustomContainerOne(Colors.red, context),
          CustomContainerOne(Colors.blue, context),
          CustomContainerOne(Colors.green, context),
        ],
      ),
    ],
  );
}
