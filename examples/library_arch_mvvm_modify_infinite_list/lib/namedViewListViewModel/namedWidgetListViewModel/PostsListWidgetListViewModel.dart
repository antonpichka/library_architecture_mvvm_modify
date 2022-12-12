import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostsListWidgetListViewModel {
  final PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<Post,ListPost> _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  final BoolQNoServiceViewModelUsingGetNPForAntiSpam<Bool,ListBool> _boolQNoServiceViewModelUsingGetNPForAntiSpam;

  PostsListWidgetListViewModel(
      this._postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      this._boolQNoServiceViewModelUsingGetNPForAntiSpam);

  @protected
  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<Post,ListPost> get getPostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
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
        !.getParameterIsField)
    {
      return;
    }
    if(_postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        !.getOneParametersNamedForPostsListWidget)
    {
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.setParameterIsField = true;
    // 1
    ListPost? listPost = await _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterInt(IntTypeParameter.success(_postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder?.getParameterList?.length));
    _boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.setParameterIsField = false;
    if(listPost
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          ?.setTwoParametersNamedForPostsListWidget(listPost);
      _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
      return;
    }
    _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        ?.setOneParametersNamedForPostsListWidget(listPost);
    _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
    return;
  }
}