import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IntTextWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class IntTextWidget<Q extends Int,W extends ListInt>
    extends StatelessWidget
{
  final IntTextWidgetListViewModel<Q,W> _lo;

  IntTextWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    _lo.notifyStreamIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask();
    return StreamBuilder<Q>(
        stream: _lo.getStreamIntUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<Q> asyncSnapshot) {
          if(asyncSnapshot.data == null) {
            return Container();
          }
          Q? int = asyncSnapshot.data;
          return Text(
            "${int?.getOneParametersNamed}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}