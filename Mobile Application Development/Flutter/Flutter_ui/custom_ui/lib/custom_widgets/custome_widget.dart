import 'package:custom_ui/screens/next_screen.dart';
import 'package:flutter/material.dart';

Widget CustomCard(
    Color color, String text, double value, BuildContext context) {
  return InkWell(
    onTap: () {
      print('Hello from dibbo');
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Hero(
            tag: 'dibbo',
            child: NextScreen(
              color: color,
              text: text,
            ),
          ),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.only(left: 30, right: 5, top: 10, bottom: 20),
      padding: EdgeInsets.all(15),
      width: value,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: color,
            spreadRadius: -5,
            offset: Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(7),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white24,
                ),
                child: Container(
                  padding: EdgeInsets.all(9),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: FlutterLogo(
                    size: 2,
                    style: FlutterLogoStyle.markOnly,
                  ),
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 150,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white24,
            ),
            child: Container(
              margin: EdgeInsets.only(right: 50),
              width: 150,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.yellow,
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '36.5 GB',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              Text(
                '80 GB',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Clean',
                    style: TextStyle(
                        color: color,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _customText(Colors.white12),
                    _customText(Colors.white24),
                    _customText(Colors.white30),
                    _customText(Colors.white38),
                    _customText(Colors.white54),
                    SizedBox(width: 5),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget CustomCardNext(
    Color color, String text, double value, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
    padding: EdgeInsets.all(15),
    height: 220,
    width: value,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: color,
      boxShadow: [
        BoxShadow(
          blurRadius: 15,
          color: color,
          spreadRadius: -5,
          offset: Offset(0, 7),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white24,
              ),
              child: Container(
                padding: EdgeInsets.all(9),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: FlutterLogo(
                  size: 2,
                  style: FlutterLogoStyle.markOnly,
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
        SizedBox(height: 25),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white24,
          ),
          child: Container(
            margin: EdgeInsets.only(right: 150),
            // width: 10,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.yellow,
            ),
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '36.5 GB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            Text(
              '80 GB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Text(
                  'Clean',
                  style: TextStyle(
                      color: color, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _customTextNext(Colors.white12),
                  _customTextNext(Colors.white24),
                  _customTextNext(Colors.white30),
                  _customTextNext(Colors.white38),
                  _customTextNext(Colors.white54),
                  SizedBox(width: 5),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget CustomCardOne(String text, String textOne) {
  return Container(
    margin: EdgeInsets.only(bottom: 7.5, top: 7.5),
    height: 80,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          blurRadius: 15,
          color: Colors.grey[300],
          spreadRadius: -6,
        ),
      ],
      // color: Colors.green,
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: FlutterLogo(
            size: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              Text(
                textOne,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget CustomCardOneNext(
    String text, String textOne, BuildContext context, String textTwo) {
  return Container(
    margin: EdgeInsets.only(bottom: 7.5, top: 7.5),
    height: 80,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          blurRadius: 15,
          color: Colors.grey[300],
          spreadRadius: -6,
        ),
      ],
      // color: Colors.green,
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: FlutterLogo(
            size: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              Text(
                textOne,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
              Text(
                textTwo,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _customText(Color color) {
  return Padding(
    padding: const EdgeInsets.only(right: 0),
    child: Text(
      '>',
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w900,
        fontSize: 14,
      ),
    ),
  );
}

Widget _customTextNext(Color color) {
  return Padding(
    padding: const EdgeInsets.only(right: 0),
    child: Text(
      '>',
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    ),
  );
}
