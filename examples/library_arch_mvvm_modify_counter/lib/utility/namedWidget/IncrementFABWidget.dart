import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/utility/modelQNamedServiceListViewModelForNamedWidget/IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget.dart';

class IncrementFABWidget
    extends StatelessWidget
{
  final IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget _lo;

  IncrementFABWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => _lo
          .incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}