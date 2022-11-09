import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholderDatabase/ListPostJsonPlaceholderDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholderDatabase/PostJsonPlaceholderDatabase.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

abstract class PostJsonPlaceholderDatabaseViewModel
    extends BaseViewModel<PostJsonPlaceholderDatabase,ListPostJsonPlaceholderDatabase,Enum>
{
  PostJsonPlaceholderDatabaseViewModel.thereIsDataSource(
      Object dataSource) : super.thereIsDataSource(dataSource, ()=> SCModel(DefaultStreamController<PostJsonPlaceholderDatabase>(), PostJsonPlaceholderDatabase.getPostJsonPlaceholderDatabase,ListPostJsonPlaceholderDatabase([])));

  @override
  PostJsonPlaceholderDatabase cloneModelNamedDatabase(
      PostJsonPlaceholderDatabase modelNamedDatabase)
  {
    return PostJsonPlaceholderDatabase(
        modelNamedDatabase.id,
        modelNamedDatabase.title,
        modelNamedDatabase.body);
  }
}