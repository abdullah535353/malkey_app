import 'package:flutter/material.dart';
import 'Test.dart';
import 'custom_list_tile.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool _visible1 = false;
  bool _visible2 = false;
  @override
  Widget build(BuildContext context) {
    double defaultSize;
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    Orientation orientation;
    defaultSize =orientation==Orientation.landscape?sizeHeight*.024:sizeWidth*.024;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color(0xffDADADA),
              child: Padding(
                padding:  EdgeInsets.all(defaultSize),
                child: Text(
                  'اللغة',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width:defaultSize* 0.02),
                ),
              ),
              child: ListTile(
                title: Text(
                  'English',
                  textAlign: TextAlign.right,
                ),
                onTap: () {
                  setState(() {
                    _visible1 = !_visible1;
                    _visible2 = false;
                  });
                },
                leading: Visibility(
                  visible: _visible1,
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: defaultSize*.002),
                ),
              ),
              child: ListTile(
                title: Text(
                  'عربى',
                  textAlign: TextAlign.right,
                ),
                onTap: () {
                  setState(() {
                    _visible2 = !_visible2;
                    _visible1 = false;
                  });
                },
                leading: Visibility(
                  visible: _visible2,
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xffDADADA),
              child: Padding(
                padding:  EdgeInsets.all(defaultSize),
                child: Text(
                  'الدعم',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            CustomListTile(
              title: 'عنا',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Test()));
              },
            ),
            CustomListTile(
              title: 'اتصل بنا',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Test()));
              },
            ),
            CustomListTile(
              title: 'سياسية الخوصية',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Test()));
              },
            ),
            CustomListTile(
              title: 'الشروط و الاحكام',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Test()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

