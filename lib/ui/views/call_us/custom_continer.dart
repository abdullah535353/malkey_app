import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  @override
  final IconData icon;
  final Color iconColor;
  CustomContainer({this.icon, this.text, this.iconColor});

  final String text;

  Widget build(BuildContext context) {
    double defaultSize;

    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    Orientation orientation;
    defaultSize =orientation==Orientation.landscape?sizeHeight*.024:sizeWidth*.024;

    return Container(
      padding: EdgeInsets.all(defaultSize),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(sizeWidth * .0655)),
        color: Color(0xffF9F9F9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color:iconColor,
            size: defaultSize*3.5,
          ),
          Text(
            text,
            style:
                TextStyle(fontSize: defaultSize*2.5, color: Color(0xffE4E4E4)),
          )
        ],
      ),
    );
  }
}
