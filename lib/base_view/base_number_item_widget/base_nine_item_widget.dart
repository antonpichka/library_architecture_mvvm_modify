import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_eight_item_widget.dart';

abstract class BaseNineItemWidget<T,Y,Z,X,C,V,B,N,M>
    extends BaseEightItemWidget<T,Y,Z,X,C,V,B,N>
{
  final M objectNine;

  const BaseNineItemWidget(T object,Y objectTwo,Z objectThree,X objectFour,C objectFive,V objectSix,B objectSeven,N objectEight,this.objectNine,{Key key})
      : super(object,objectTwo,objectThree,objectFour,objectFive,objectSix,objectSeven,objectEight,key: key);
}