import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the extends of the "BaseModelQThereIsStateViewModel" class, named StringsQThereIsStateViewModel
class StringsQThereIsStateViewModel<T extends Strings,Y extends ListStrings<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  StringsQThereIsStateViewModel(super.iInitializedStreamModel);

  IStreamModel<T,Y>? get getIStreamStrings {
    return getIStreamModel;
  }

  Future<T?> get getFutureStrings {
    return getFutureModel;
  }

  Stream<T?>? get getStreamStrings {
    return getStreamModel;
  }

  T? get getStrings {
    return getModel;
  }

  set setStrings(T? int) {
    setModel = int;
  }

  void notifyStreamStrings() {
    notifyStreamModel();
  }

  Future<Y?> get getFutureListStrings {
    return getFutureListModel;
  }

  Stream<Y?>? get getStreamListStrings {
    return getStreamListModel;
  }

  Y? get getListStrings {
    return getListModel;
  }

  set setListStrings(Y? listInt) {
    setListModel = listInt;
  }

  void notifyStreamListStrings() {
    notifyStreamListModel();
  }
}