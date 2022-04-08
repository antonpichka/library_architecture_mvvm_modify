import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_six_item_widget.dart';

abstract class BaseSevenItemWidget<T,Y,Z,X,C,V,B>
    extends BaseSixItemWidget<T,Y,Z,X,C,V>
{
  final B objectSeven;

  const BaseSevenItemWidget(T object,Y objectTwo,Z objectThree,X objectFour,C objectFive,V objectSix,this.objectSeven,{Key key})
      : super(object,objectTwo,objectThree,objectFour,objectFive,objectSix,key: key);
}