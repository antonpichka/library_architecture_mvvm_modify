import 'package:flutter/cupertino.dart';

abstract class BaseSingleItemWidget<T>
    extends StatelessWidget
{
  final T object;

  const BaseSingleItemWidget(this.object,{Key key}) : super(key: key);
}