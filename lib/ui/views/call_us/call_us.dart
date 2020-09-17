import 'package:flutter/material.dart';
import 'package:malkey/ui/views/call_us/custom_continer.dart';
import 'package:malkey/ui/views/call_us/customtextfeild.dart';
import 'package:malkey/ui/views/call_us/text_feild_for_massage.dart';

import 'icon_of_call_us.dart';

class CallUs extends StatelessWidget {
  String text;

  @override
  Widget build(BuildContext context) {
    double defaultSize;

    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    Orientation orientation;
    defaultSize = orientation == Orientation.landscape
        ? sizeHeight * .024
        : sizeWidth * .024;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: sizeHeight * .05,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    icon: Icons.call,
                    iconColor: Colors.green,
                    text: '01002345678+',
                  ),
                  CustomContainer(
                    icon: Icons.mail,
                    iconColor: Colors.blue,
                    text: 'Abdalla@email',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultSize * 4.0,
            ),
            CallUsIcons(),
            SizedBox(
              height: defaultSize * 2,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize),
              child: Container(
                padding: EdgeInsets.all(defaultSize / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'اترك رساله',
                      style: TextStyle(
                          fontSize: defaultSize * 2.7,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: defaultSize / 2,
                    ),
                    Text(
                      ' لن يتم نشر عنوانك الالكتروني. الحقوق الالزاميه مشار اليها بـ ',
                      style: TextStyle(
                          fontSize: defaultSize * 2,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: defaultSize,
            ),
            Container(
              padding: EdgeInsets.all(defaultSize / 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextField(
                    title: "اسمك الكريم",
                  ),
                  CustomTextField(
                    title: "ايميلك",
                  )
                ],
              ),
            ),
            MessageTextField()
          ],
        ),
      ),
    );
  }
}
