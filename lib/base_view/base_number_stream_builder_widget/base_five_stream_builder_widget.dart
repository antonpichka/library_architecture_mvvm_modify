import 'package:flutter/material.dart';

abstract class BaseFiveStreamBuilderWidget<T,Y,Z,X,C> {

  Widget buildFiveStreamBuilderWidget(BuildContext context,
      T object,
      Y objectTwo,
      Z objectThree,
      X objectFour,
      C objectFive);
}
