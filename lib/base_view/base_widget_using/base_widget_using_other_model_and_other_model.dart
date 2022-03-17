import 'package:flutter/material.dart';

abstract class BaseWidgetUsingOtherModelAndOtherModel<T,Y> {

  Widget buildWidgetUsingOtherModelAndOtherModel(BuildContext context,
      T modelOne,
      Y modelTwo);
}
