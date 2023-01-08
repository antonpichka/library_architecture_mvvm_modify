import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class PostQThereIsStateViewModelForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  PostQThereIsStateViewModelForStartIndexFromJsonPlaceholder(super.iInitializedStreamModel);

  Stream<Y>? get getStreamListPostForStartIndexFromJsonPlaceholder {
    return getStreamListModel;
  }

  Y? get getListPostForStartIndexFromJsonPlaceholder {
    return getListModel;
  }

  set setListPostForStartIndexFromJsonPlaceholder(Y listPost) {
    setListModel = listPost;
  }

  void notifyStreamListPostForStartIndexFromJsonPlaceholder() {
    notifyStreamListModel();
  }
}