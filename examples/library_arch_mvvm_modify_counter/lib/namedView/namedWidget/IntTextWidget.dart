import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IntTextWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';

class IntTextWidget
    extends StatelessWidget
{
  final IntTextWidgetListViewModel _lo;

  IntTextWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Int>(
        initialData: Int.success(0),
        stream: _lo.getStreamIntUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<Int> asyncSnapshot) {
          Int? int = asyncSnapshot.data;
          return Text(
            "${int?.field}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}