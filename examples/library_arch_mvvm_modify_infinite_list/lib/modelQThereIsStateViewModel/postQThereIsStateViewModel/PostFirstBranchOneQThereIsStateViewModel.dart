import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/postQThereIsStateViewModel/PostQThereIsStateViewModel.dart';

class PostFirstBranchOneQThereIsStateViewModel<T extends PostFirstBranchOne,Y extends ListPostFirstBranchOne<T>>
    extends PostQThereIsStateViewModel<T,Y>
{
  PostFirstBranchOneQThereIsStateViewModel(super.iInitializedStreamModel);

  Future<Y?> get getFutureListPostFirstBranchOne {
    return getFutureListPost;
  }

  Stream<Y?>? get getStreamListPostFirstBranchOne {
    return getStreamListPost;
  }

  Y? get getListPostFirstBranchOne {
    return getListPost;
  }

  set setListPostFirstBranchOne(Y listPostFirstBranchOne) {
    setListPost = listPostFirstBranchOne;
  }

  void notifyStreamListPostFirstBranchOne() {
    notifyStreamListPost();
  }
}