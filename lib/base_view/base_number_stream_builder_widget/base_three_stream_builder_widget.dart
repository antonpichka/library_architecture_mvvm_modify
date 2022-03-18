import 'package:flutter/material.dart';

abstract class BaseThreeStreamBuilderWidget<T,Y,Z> {

  Widget buildThreeStreamBuilderWidget(BuildContext context,
      T object,
      Y objectTwo,
      Z objectThree);
}
