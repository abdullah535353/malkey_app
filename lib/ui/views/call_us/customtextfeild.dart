import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
 final String title;

 CustomTextField({this.title});

 @override
  Widget build(BuildContext context) {
   String text;

   double defaultSize;

    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    Orientation orientation;
    defaultSize =orientation==Orientation.landscape?sizeHeight*.024:sizeWidth*.024;
    return
      Container(
        height: sizeHeight * .09,
        width: sizeWidth * .44,
        padding: EdgeInsets.all(defaultSize / 6),
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.all(Radius.circular(defaultSize * 2)),
          border: Border.all(
            color: Color(0xffF5F5F5),
          ),
          color: Color(0xffF9F9F9),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(defaultSize / 8),
              child: Row(
                children: [
                  Text(title),
                  SizedBox(
                    height: defaultSize * 5,
                    width: defaultSize,
                    child: VerticalDivider(
                      width: defaultSize,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    child: TextField(
                      onChanged: (value) {
                        value = text;
                      },
                      decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                    width: sizeWidth * .2,
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
