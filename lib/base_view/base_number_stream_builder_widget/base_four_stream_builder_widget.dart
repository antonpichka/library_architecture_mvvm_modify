import 'package:flutter/material.dart';

abstract class BaseFourStreamBuilderWidget<T,Y,Z,X> {

  Widget buildFourStreamBuilderWidget(BuildContext context,
      T object,
      Y objectTwo,
      Z objectThree,
      X objectFour);
}
