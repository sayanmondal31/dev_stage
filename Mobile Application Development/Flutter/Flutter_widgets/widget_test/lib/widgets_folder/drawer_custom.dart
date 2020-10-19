import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
          child: Drawer(
              //   child: Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              // color: Colors.green,
              // borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(30),
              //   bottomRight: Radius.circular(30),
              // ),
              ),
          // ),
          // ),
        ),
      ),
      appBar: AppBar(
        title: Text('Custom Drawer'),
        centerTitle: true,
      ),
    );
  }
}
