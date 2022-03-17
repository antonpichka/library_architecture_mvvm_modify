import 'package:flutter/material.dart';

abstract class BaseWidgetUsingOtherModel<T> {

  Widget buildWidgetUsingOtherModel(BuildContext context,
      T model);
}
