import 'package:flutter/cupertino.dart';

abstract class BaseItemWidgetUsingOtherModel<T>
    extends StatelessWidget
{
  final T otherModel;

  const BaseItemWidgetUsingOtherModel(this.otherModel,{Key key}) : super(key: key);
}