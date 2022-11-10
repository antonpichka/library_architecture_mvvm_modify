import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_library.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/list_int_without_library.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/int_without_library_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

class IntWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement
    extends IntWithoutLibraryViewModel
{
  IntWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement() : super([EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP]);

  @override
  IStream<IntWithoutLibrary> initAndCloneIStream() {
    return DefaultStream(IntWithoutLibrary.getIntWithoutLibrary, ListIntWithoutLibrary([]));
  }

  @override
  Object thisClass() {
    return this;
  }

  Stream<IntWithoutLibrary> get getStreamIntWithoutLibraryUsingGetNPForIncrementAndDecrement {
    return getStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  IntWithoutLibrary get getIntWithoutLibraryUsingGetNPForIncrementAndDecrement {
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  void setIntWithoutLibraryUsingGetNPForIncrementAndDecrement(
      IntWithoutLibrary int)
  {
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP,int);
  }

  void notifyStreamIntWithoutLibraryUsingGetNPForIncrementAndDecrement() {
    notifyStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }
}