import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/utility/modelQNamedServiceListViewModelForNamedWidget/IntQNoServiceListViewModelForIncrementFABWidget.dart';

class IncrementFABWidget
    extends StatelessWidget
{
  final IntQNoServiceListViewModelForIncrementFABWidget intQNoServiceListViewModelForIncrementFABWidget;

  IncrementFABWidget(this.intQNoServiceListViewModelForIncrementFABWidget);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => intQNoServiceListViewModelForIncrementFABWidget
          .incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}