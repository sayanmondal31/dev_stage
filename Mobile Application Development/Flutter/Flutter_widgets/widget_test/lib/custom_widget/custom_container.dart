import 'package:flutter/material.dart';

Widget CustomContainer(Color color, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    color: color,
  );
}

Widget CustomContainerOne(Color color, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 100,
    width: 100,
    color: color,
  );
}
