import 'package:flutter/material.dart';
import 'package:malkey/utils/translator.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child: Center(
            child: Text(
              translator(context, "hello")
            ),
          ),
          ),
      ),    );
  }
}