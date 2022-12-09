import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostsListWidgetListViewModel {
  final PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  final BoolQNoServiceViewModelUsingGetNPForAntiSpam _boolQNoServiceViewModelUsingGetNPForAntiSpam;

  PostsListWidgetListViewModel(
      this._postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      this._boolQNoServiceViewModelUsingGetNPForAntiSpam);

  @protected
  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder get getPostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  }

  Stream<ListPost>? get getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  }

  Future<void> getListPostFromHttpClientServiceParameterIntAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(seconds: 1));
    if(_boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        !.isField)
    {
      return;
    }
    if(_postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        ?.hasReachedMax ?? false)
    {
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.isField = true;
    // 1
    ListPost? listPost = await _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterInt(IntTypeParameter.success(_postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder?.list?.length));
    _boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.isField = false;
    if(listPost
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          ?.setFromListPostParametersExceptionControllerAndHasReachedMax(listPost);
      _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
      return;
    }
    _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        ?.insertListToListAndSetFromListPostParametersExceptionControllerAndHasReachedMax(listPost);
    _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
    return;
  }
}