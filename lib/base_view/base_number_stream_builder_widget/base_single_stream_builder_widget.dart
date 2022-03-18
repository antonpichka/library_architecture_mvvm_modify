import 'package:flutter/material.dart';

abstract class BaseSingleStreamBuilderWidget<T> {

  Widget buildSingleStreamBuilderWidget(BuildContext context,
      T object);
}
