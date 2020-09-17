import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallUsIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize;

    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    Orientation orientation;
    defaultSize =orientation==Orientation.landscape?sizeHeight*.024:sizeWidth*.024;
    return  Padding(
      padding: EdgeInsets.all(defaultSize),
      child: Row(
        children: [
          Text(
            'تابعنا على ',
            style: TextStyle(
              fontSize: defaultSize * 2,
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.black,
              height: defaultSize * 2,
              indent: defaultSize * 2,
              endIndent: 0,
            ),
          ),
          SizedBox(
            width: sizeWidth * .02,
          ),
          FaIcon(
            FontAwesomeIcons.youtube,
            size: defaultSize * 4,
            color: Colors.red,
          ),
          SizedBox(
            width: sizeWidth * .015,
          ),
          FaIcon(
            FontAwesomeIcons.twitter,
            size: defaultSize * 4,
            color: Color(0xff58E0FF),
          ),
          SizedBox(
            width: sizeWidth * .015,
          ),
          FaIcon(
            FontAwesomeIcons.facebook,
            size: defaultSize * 4,
            color: Color(0xff3463F4),
          ),
          SizedBox(
            width: sizeWidth * .015,
          ),
          FaIcon(
            FontAwesomeIcons.instagram,
            size: defaultSize * 4,
            color: Color(0xffD4B895),
          ),
        ],
      ),
    );
  }
}
