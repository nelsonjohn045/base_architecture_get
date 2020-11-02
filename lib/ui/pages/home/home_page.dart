import 'package:base_design/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Container(
      child: 'Home'.text.makeCentered(),


    );
  }
}
