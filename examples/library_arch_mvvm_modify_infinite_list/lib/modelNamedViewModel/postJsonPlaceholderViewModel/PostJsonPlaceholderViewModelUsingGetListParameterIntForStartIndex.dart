import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedDataSource/postJsonPlaceholderDataSource/PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderViewModel/PostJsonPlaceholderViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex
    extends PostJsonPlaceholderViewModel
{
  PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex() : super.thereIsDataSource(PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex.db);

  @override
  Object thisClass() {
    return this;
  }

  Stream<ListPostJsonPlaceholder> get getStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex {
    return getStreamListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed);
  }

  ListPostJsonPlaceholder get getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex {
    return getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed);
  }

  Future<ListPostJsonPlaceholder> getListPostFromJsonPlaceholderParameterInt(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedParameterNamed(intTypeParameter);
  }

  Future<ListPostJsonPlaceholder> getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholder(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedParameterNamedAndSetListModelNamed(intTypeParameter);
  }

  void notifyStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex() {
    notifyStreamListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed);
  }
}