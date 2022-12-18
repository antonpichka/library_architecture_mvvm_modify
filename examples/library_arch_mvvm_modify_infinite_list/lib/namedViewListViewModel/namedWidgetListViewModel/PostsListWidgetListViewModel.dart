import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostsListWidgetListViewModel {
  @protected
  final PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<Post,ListPost<Post>> postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  @protected
  final BoolQNoServiceViewModelUsingGetNPForAntiSpam<Bool,ListBool<Bool>> boolQNoServiceViewModelUsingGetNPForAntiSpam;

  PostsListWidgetListViewModel(
      this.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      this.boolQNoServiceViewModelUsingGetNPForAntiSpam);

  Stream<ListPost<Post>>? get getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  }

  Future<void> getListPostFromHttpClientServiceParameterIntAndInGeneralOneTask()
  async {
    await Future.delayed(const Duration(seconds: 1));
    if(boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        !.getParameterIsField)
    {
      return;
    }
    if(postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        ?.getOneParametersNamedForPostsListWidget ?? true)
    {
      return;
    }
    boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.setParameterIsField = true;
    // 1
    ListPost? listPost = await postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterInt(IntTypeParameter.success(postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder?.getParameterList?.length));
    boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.setParameterIsField = false;
    if(listPost
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          ?.setTwoParametersNamedForPostsListWidget(listPost);
      postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
          .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
      return;
    }
    postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        ?.setOneParametersNamedForPostsListWidget(listPost);
    postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
    return;
  }
}