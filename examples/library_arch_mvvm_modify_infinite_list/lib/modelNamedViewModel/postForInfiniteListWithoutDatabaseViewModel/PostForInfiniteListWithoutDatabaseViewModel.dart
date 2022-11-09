import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutDatabase/ListPostForInfiniteListWithoutDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutDatabase/PostForInfiniteListWithoutDatabase.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

abstract class PostForInfiniteListWithoutDatabaseViewModel
    extends BaseViewModel<PostForInfiniteListWithoutDatabase,ListPostForInfiniteListWithoutDatabase, Enum>
{
  PostForInfiniteListWithoutDatabaseViewModel.noDataSource(
      List<EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM> listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM) : super.noDataSource(listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM, ()=> SCModel(DefaultStreamController<PostForInfiniteListWithoutDatabase>(),PostForInfiniteListWithoutDatabase.getPostForInfiniteListWithoutDatabase,ListPostForInfiniteListWithoutDatabase([])));

  @override
  PostForInfiniteListWithoutDatabase cloneModelNamedDatabase(
      PostForInfiniteListWithoutDatabase model)
  {
    return PostForInfiniteListWithoutDatabase(
        model.listPostJsonPlaceholderDatabase,
        model.hasReachedMax,
        model.enumWhatIsTheException);
  }
}