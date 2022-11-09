import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedDataSource/postJsonPlaceholderDatabaseDataSource/PostJsonPlaceholderDatabaseDataSourceUsingGetListParameterStartIndex.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderDatabaseViewModel/PostJsonPlaceholderDatabaseViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
    extends PostJsonPlaceholderDatabaseViewModel
{
  PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex()
      : super.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor()
  {
    setDataSource = PostJsonPlaceholderDatabaseDataSourceUsingGetListParameterStartIndex.db;
  }

  List<Post> get getListPostUsingGetListParameterStartIndex {
    return getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed);
  }

  Future<Response<List<Post>, BaseException>> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPost(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedDatabaseParameterNamedAndSetListModelNamedDatabase(intTypeParameter);
  }
}