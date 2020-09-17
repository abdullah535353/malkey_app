import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final title;
  final Function onTap;
  CustomListTile({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    double defaultSize;
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    Orientation orientation;
    defaultSize =orientation==Orientation.landscape?sizeHeight*.024:sizeWidth*.024;
    return SingleChildScrollView(

      child:Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: defaultSize*0.02)),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontFamily: ' Cairo'),
            textAlign: TextAlign.end,
          ),
          leading: Icon(Icons.keyboard_arrow_right),
          onTap: onTap,
        ),
      ),
    );
  }
}