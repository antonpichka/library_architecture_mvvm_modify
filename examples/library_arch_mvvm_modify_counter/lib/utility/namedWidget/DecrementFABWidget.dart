import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/utility/modelQNamedServiceListViewModelForNamedWidget/IntQNoServiceListViewModelForDecrementFABWidget.dart';

class DecrementFABWidget
    extends StatelessWidget
{
  final IntQNoServiceListViewModelForDecrementFABWidget intQNoServiceListViewModelForDecrementFABWidget;

  DecrementFABWidget(this.intQNoServiceListViewModelForDecrementFABWidget);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () => intQNoServiceListViewModelForDecrementFABWidget
            .decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}