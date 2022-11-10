import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedDataSource/postJsonPlaceholderDataSource/PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderViewModel/PostJsonPlaceholderViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex
    extends PostJsonPlaceholderViewModel
{
  PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex() : super.thereIsDataSource(PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex.db);

  @override
  Object thisClass() {
    return this;
  }

  List<PostJsonPlaceholder> get getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex {
    return getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed);
  }

  Future<Response<List<PostJsonPlaceholder>, BaseException>> getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholder(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedParameterNamedAndSetListModelNamed(intTypeParameter);
  }
}