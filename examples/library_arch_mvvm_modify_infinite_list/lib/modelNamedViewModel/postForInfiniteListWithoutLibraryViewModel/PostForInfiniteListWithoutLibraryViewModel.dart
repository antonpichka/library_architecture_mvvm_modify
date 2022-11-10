import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutLibrary/ListPostForInfiniteListWithoutLibrary.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutLibrary/PostForInfiniteListWithoutLibrary.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

abstract class PostForInfiniteListWithoutLibraryViewModel
    extends BaseViewModel<PostForInfiniteListWithoutLibrary,ListPostForInfiniteListWithoutLibrary, Enum>
{
  PostForInfiniteListWithoutLibraryViewModel.noDataSource(List<EnumBaseModelNamedAndBaseListModelNamedVM> listEnumBaseModelNamedAndBaseListModelNamedVM) : super.noDataSource(listEnumBaseModelNamedAndBaseListModelNamedVM);

  @override
  IStream<PostForInfiniteListWithoutLibrary> initAndCloneIStream() {
    return DefaultStream<PostForInfiniteListWithoutLibrary>(PostForInfiniteListWithoutLibrary.getPostForInfiniteListWithoutLibrary,ListPostForInfiniteListWithoutLibrary([]));
  }

  @override
  PostForInfiniteListWithoutLibrary cloneModelNamed(
      PostForInfiniteListWithoutLibrary model)
  {
    return PostForInfiniteListWithoutLibrary(
        model.listPostJsonPlaceholder,
        model.hasReachedMax,
        model.enumWhatIsTheException);
  }
}