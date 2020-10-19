import 'package:flutter/material.dart';

class SliverAppBarCustom extends StatelessWidget {
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            expandedHeight: 200,
            // snap: false,
            floating: true,
            // automaticallyImplyLeading: false,
            excludeHeaderSemantics: false,
            pinned: true,
            forceElevated: true,
            elevation: 20,
            primary: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(40, 30),
                bottomRight: Radius.elliptical(40, 30),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'MEDICINES',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.settings),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(20)),
          ),
        ],
      ),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}
