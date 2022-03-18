import 'package:flutter/material.dart';

abstract class BaseTwoStreamBuilderWidget<T,Y> {

  Widget buildTwoStreamBuilderWidget(BuildContext context,
      T object,
      Y objectTwo);
}
