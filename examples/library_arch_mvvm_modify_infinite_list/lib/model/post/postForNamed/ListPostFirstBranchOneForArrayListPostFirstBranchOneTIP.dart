import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';

class ListPostFirstBranchOneForArrayListPostFirstBranchOneTIP
    implements IListModelForNamedTIP<ListPostFirstBranchOne<PostFirstBranchOne>,List<PostFirstBranchOne>>
{
  @override
  ListPostFirstBranchOne<PostFirstBranchOne>? getListModelForNamedTIP(
      List<PostFirstBranchOne>? parameter)
  {
    return ListPostFirstBranchOne.success(parameter);
  }
}