import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_single_item_widget.dart';

abstract class BaseTwoItemWidget<T,Y>
    extends BaseSingleItemWidget<T>
{
  final Y objectTwo;

  const BaseTwoItemWidget(T object,this.objectTwo,{Key key}) : super(object,key: key);
}