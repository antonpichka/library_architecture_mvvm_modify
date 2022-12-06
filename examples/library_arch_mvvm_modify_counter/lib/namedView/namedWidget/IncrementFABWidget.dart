import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IncrementFABWidgetListViewModel.dart';

class IncrementFABWidget
    extends StatelessWidget
{
  final IncrementFABWidgetListViewModel _lo;

  IncrementFABWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => _lo
          .incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}