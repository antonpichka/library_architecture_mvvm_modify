import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_arch_mvvm_modify_counter/utility/modelQNamedServiceListViewModelForNamedWidget/IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForDecrementFABWidget.dart';
import 'package:library_arch_mvvm_modify_counter/utility/modelQNamedServiceListViewModelForNamedWidget/IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget.dart';
import 'package:library_arch_mvvm_modify_counter/utility/modelQNamedServiceListViewModelForNamedWidget/IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIntTextWidget.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement =
  IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement();

  // ModelQNamedServiceListViewModelForNamedWidget
  late final IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIntTextWidget intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIntTextWidget;
  late final IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget;
  late final IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForDecrementFABWidget intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForDecrementFABWidget;

  MainViewListViewModel()  {
    intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIntTextWidget = IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIntTextWidget(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);
    intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget = IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);
    intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForDecrementFABWidget = IntQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForDecrementFABWidget(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);
  }

  @override
  void dispose() {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }
}