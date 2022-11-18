import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  final _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement =
  IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  Stream<Int> get getStreamIntUsingGetNPForIncrementAndDecrement {
    return _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.getStreamIntUsingGetNPForIncrementAndDecrement;
  }

  void incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        .field++;
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
  }

  void decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        .field--;
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
  }
}