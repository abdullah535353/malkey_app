import 'package:flutter/material.dart';

class MessageTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize;

    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    Orientation orientation;
    defaultSize = orientation == Orientation.landscape
        ? sizeHeight * .024
        : sizeWidth * .024;
    return SizedBox(
      height: defaultSize * 16,
      width: sizeWidth / 1.02,
      child: Padding(
        padding: EdgeInsets.all(defaultSize),
        child: Container(
          padding: EdgeInsets.all(defaultSize),
          child: TextField(
            maxLines: 4,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffF9F9F9),
              suffixIcon: Icon(
                Icons.send,
                size: defaultSize * 3.2,
                color: Colors.blue,
              ),
              hintText: "   اكتب رسالتك هنا",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultSize * 1.5),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultSize * 1.5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
