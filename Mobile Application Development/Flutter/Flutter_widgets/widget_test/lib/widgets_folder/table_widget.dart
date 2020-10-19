import 'package:flutter/material.dart';
import 'package:widget_test/custom_widget/custom_table_widget.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomTable(context),
          CustomTable(context),
          CustomTable(context),
          CustomTable(context),
          CustomTable(context),
        ],
      ),
    );
  }
}
