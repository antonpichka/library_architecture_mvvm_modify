import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_two_item_widget.dart';

abstract class BaseThreeItemWidget<T,Y,Z>
    extends BaseTwoItemWidget<T,Y>
{
  final Z objectThree;

  const BaseThreeItemWidget(T object,Y objectTwo,this.objectThree,{Key key})
      : super(object,objectTwo,key: key);
}