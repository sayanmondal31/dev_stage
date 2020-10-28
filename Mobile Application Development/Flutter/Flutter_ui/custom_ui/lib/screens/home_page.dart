import 'package:custom_ui/custom_widgets/custome_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width / 1.2,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Upgrade Pro',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.yellow[600],
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.4,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: FlutterLogo(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Debajyati Banerjee',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Let\'s clean and manage your file\'s',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 0, top: 15, right: 0, bottom: 0),
                      height: 240,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomCard(Colors.green, 'File Box', 150, context),
                          CustomCard(Colors.red[400], 'G Drive', 150, context),
                          CustomCard(Colors.blue, 'Photos', 150, context),
                          CustomCard(Colors.green, 'Docs', 150, context),
                          CustomCard(Colors.blue, 'Slides', 150, context),
                        ],
                      ),
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
                                'Categories',
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
                      margin: EdgeInsets.only(left: 5, right: 5),
                      padding: EdgeInsets.only(top: 10, bottom: 0),
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.black,
                      height: 159,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 70),
                            child: Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              spacing: 10,
                              children: [
                                CustomCardOne('Picture', '2690 items'),
                                CustomCardOne('Video', '1257 items'),
                                CustomCardOne('My File', '3016 items'),
                                CustomCardOne('Apps', '75 items'),
                                CustomCardOne('PDF', '105 items'),
                                CustomCardOne('DOC', '284 items'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 550,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    height: 70,
                    color: Colors.white,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Explore',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.blueGrey[900],
                              ),
                            ),
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                          ],
                        ),
                        SizedBox(width: 40),
                        FaIcon(
                          FontAwesomeIcons.cube,
                          color: Colors.blueGrey[900],
                        ),
                        SizedBox(width: 110),
                        Icon(
                          Icons.folder_special,
                          color: Colors.blueGrey[900],
                        ),
                        SizedBox(width: 50),
                        Icon(
                          Icons.settings,
                          color: Colors.blueGrey[900],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 525,
                  left: MediaQuery.of(context).size.width / 2.36,
                  child: Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        colors: [
                          Colors.blueGrey[700],
                          Colors.blueGrey[800],
                          Colors.blueGrey[900],
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: Colors.grey[600],
                          spreadRadius: -5,
                          offset: Offset(4, 17),
                        ),
                      ],
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.rocket,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
