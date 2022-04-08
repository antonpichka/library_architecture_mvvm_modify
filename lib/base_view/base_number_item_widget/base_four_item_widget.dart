import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_three_item_widget.dart';

abstract class BaseFourItemWidget<T,Y,Z,X>
    extends BaseThreeItemWidget<T,Y,Z>
{
  final X objectFour;

  const BaseFourItemWidget(T object,Y objectTwo,Z objectThree,this.objectFour,{Key key})
      : super(object,objectTwo,objectThree,key: key);
}