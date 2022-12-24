import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';

class ListPostFirstBranchOneForNetworkExceptionTIP
    implements IListModelForNamedTIP<ListPostFirstBranchOne<PostFirstBranchOne>,NetworkException>
{
  @override
  ListPostFirstBranchOne<PostFirstBranchOne>? getListModelForNamedTIP(
      NetworkException? parameter)
  {
    return ListPostFirstBranchOne.exception(parameter!);
  }
}