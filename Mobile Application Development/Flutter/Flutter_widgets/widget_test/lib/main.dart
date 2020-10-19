import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_test/widgets_folder/page_view_widget.dart';
import 'package:widget_test/widgets_folder/sliver_app_bar_widget.dart';
import 'package:widget_test/widgets_folder/table_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: PageViewWidget(),
      // home: TableWidget(),
      home: SliverAppBarCustom(),
    );
  }
}
