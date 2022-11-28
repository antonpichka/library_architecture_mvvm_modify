import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/utility/modelQNamedServiceListViewModelForNamedWidget/IntQNoServiceListViewModelForIntTextWidget.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';

class IntTextWidget
    extends StatelessWidget
{
  final IntQNoServiceListViewModelForIntTextWidget intQNoServiceListViewModelForIntTextWidget;

  IntTextWidget(this.intQNoServiceListViewModelForIntTextWidget);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Int>(
        initialData: Int.success(0),
        stream: intQNoServiceListViewModelForIntTextWidget.getStreamIntUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<Int> asyncSnapshot) {
          Int? int = asyncSnapshot.data;
          return Text(
            "${int?.field}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}