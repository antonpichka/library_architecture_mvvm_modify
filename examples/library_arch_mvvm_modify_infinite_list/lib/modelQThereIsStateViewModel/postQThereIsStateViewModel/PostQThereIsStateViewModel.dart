import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class PostQThereIsStateViewModel<T extends Post, Y extends ListPost<T>>
    extends BaseModelQThereIsStateViewModel<T, Y> {
  PostQThereIsStateViewModel(super.iInitializedStreamModel);

  Future<Y?> get getFutureListPost {
    return getFutureListModel;
  }

  Stream<Y?>? get getStreamListPost {
    return getStreamListModel;
  }

  Y? get getListPost {
    return getListModel;
  }

  set setListPost(Y listPost) {
    setListModel = listPost;
  }

  void notifyStreamListPost() {
    notifyStreamListModel();
  }
}
