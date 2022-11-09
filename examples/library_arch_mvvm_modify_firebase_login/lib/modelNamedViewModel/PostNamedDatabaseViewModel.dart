import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

abstract class PostNamedDatabaseViewModel<T extends BaseModelNamedDatabase<Post>,Y extends BaseListModelNamedDatabase<ListPost,T>>
    extends BaseViewModel<Post,ListPost,T,Y,Enum>
{
  PostNamedDatabaseViewModel.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(
      ConverterToBaseModelNamedDatabase<Post, T> converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase<ListPost, Y> converterToBaseListModelNamedDatabase)
      : super.thereIsDataSource(
      converterToBaseModelNamedDatabase,
      converterToBaseListModelNamedDatabase,
          ()=> SCModel(DefaultStreamController<Post>(),Post.getDefaultPost,ListPost([])));

  @override
  Post cloneModelNamedDatabase(
      Post model)
  {
    return Post(
        model.uniqueId,
        model.title,
        model.body);
  }
}