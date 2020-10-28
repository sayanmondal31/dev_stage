import 'package:custom_ui/custom_widgets/custome_widget.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  Color color;
  String text;
  NextScreen({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Home - $text'),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlutterLogo(),
            ),
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Column(
                  children: [
                    CustomCardNext(
                      color,
                      text,
                      MediaQuery.of(context).size.width,
                      context,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Files',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Total 22 files',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      // color: Colors.green,
                      height: MediaQuery.of(context).size.width - 100,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        children: [
                          CustomCardOneNext('Course Video', '2.4GB Junk File',
                              context, 'Folder: 26 Items: 159, Used: 23.6 GB'),
                          CustomCardOneNext('Course Video', '2.4GB Junk File',
                              context, 'Folder: 26 Items: 159, Used: 23.6 GB'),
                          CustomCardOneNext('Course Video', '2.4GB Junk File',
                              context, 'Folder: 26 Items: 159, Used: 23.6 GB'),
                          CustomCardOneNext('Course Video', '2.4GB Junk File',
                              context, 'Folder: 26 Items: 159, Used: 23.6 GB'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
