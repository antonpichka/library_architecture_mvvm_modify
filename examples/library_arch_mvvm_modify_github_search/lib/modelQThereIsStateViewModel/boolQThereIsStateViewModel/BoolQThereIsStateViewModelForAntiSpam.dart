import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';

class BoolQThereIsStateViewModelForAntiSpam<T extends Bool,Y extends ListBool<T>>
    extends BoolQThereIsStateViewModel<T,Y>
{
  BoolQThereIsStateViewModelForAntiSpam(super.iStreamModelForSuccess);

  T? get getBoolForAntiSpam {
    return getModel;
  }
}