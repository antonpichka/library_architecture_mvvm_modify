import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/boolNoDSViewModel/BoolNoDSViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderViewModel/PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class ListOfViewModelForPostsListWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex =
  PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex();
  final BoolNoDSViewModelUsingGetNPForAntiSpam _boolNoDSViewModelUsingGetNPForAntiSpam =
  BoolNoDSViewModelUsingGetNPForAntiSpam();

  @override
  void dispose() {
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dispose();
    _boolNoDSViewModelUsingGetNPForAntiSpam.dispose();
  }

  Stream<ListPostJsonPlaceholder> get getStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex {
    return _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex;
  }

  Future<void> getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholderAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(milliseconds: 1000));
    if(_boolNoDSViewModelUsingGetNPForAntiSpam
        .getBoolNoDSUsingGetNPForAntiSpam
        .isField)
    {
      return;
    }
    if(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex
        .hasReachedMax)
    {
      return;
    }
    _boolNoDSViewModelUsingGetNPForAntiSpam
        .getBoolNoDSUsingGetNPForAntiSpam
        .isField = true;
    IntTypeParameter intTypeParameter = IntTypeParameter(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex
        .listModelNamed
        .length);
    // 1
    ListPostJsonPlaceholder listPostJsonPlaceholder = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderParameterInt(intTypeParameter);
    _boolNoDSViewModelUsingGetNPForAntiSpam
        .getBoolNoDSUsingGetNPForAntiSpam
        .isField = false;
    if(listPostJsonPlaceholder.isExceptionNotNull()) {
      _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
          .getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex
          .setFromListPostJsonPlaceholderParametersExceptionAndHasReachedMaxAndEnumWhatIsTheException(listPostJsonPlaceholder);
      _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
          .notifyStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex();
      return;
    }
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex
        .setAndAddingToListFromListPostJsonPlaceholderParametersListPostJsonPlaceholderAndHasReachedMaxAndEnumWhatIsTheException(listPostJsonPlaceholder);
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .notifyStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholderAndInGeneralOneTaskExceptionItInitMethod()
  async {
    // 1
    await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholder(IntTypeParameter(0));
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .notifyStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex();
    return;
  }
}