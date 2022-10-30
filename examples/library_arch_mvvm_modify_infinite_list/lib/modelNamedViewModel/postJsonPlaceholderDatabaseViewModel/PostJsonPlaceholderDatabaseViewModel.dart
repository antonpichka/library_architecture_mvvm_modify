import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostJsonPlaceholderDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostJsonPlaceholderDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/PostNamedDatabaseViewModel.dart';

class PostJsonPlaceholderDatabaseViewModel
    extends PostNamedDatabaseViewModel<PostJsonPlaceholderDatabase,ListPostJsonPlaceholderDatabase>
{
  PostJsonPlaceholderDatabaseViewModel.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor()
      : super.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(null, null);

  @override
  Object thisClass() {
    return this;
  }
}