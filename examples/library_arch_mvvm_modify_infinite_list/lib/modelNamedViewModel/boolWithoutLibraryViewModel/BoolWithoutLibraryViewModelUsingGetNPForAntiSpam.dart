import 'package:library_architecture_mvvm_modify/base_model_named_database/bool_without_library.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/list_bool_without_library.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_without_library_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

class BoolWithoutLibraryViewModelUsingGetNPForAntiSpam
    extends BoolWithoutLibraryViewModel
{
  BoolWithoutLibraryViewModelUsingGetNPForAntiSpam() : super([EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP]);

  @override
  IStream<BoolWithoutLibrary> initAndCloneIStream() {
    return DefaultStream<BoolWithoutLibrary>(BoolWithoutLibrary.getBoolWithoutLibrary,ListBoolWithoutLibrary([]));
  }

  @override
  Object thisClass() {
    return this;
  }

  Stream<BoolWithoutLibrary> get getStreamBoolWithoutLibraryUsingGetNPForAntiSpam {
    return getStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  BoolWithoutLibrary get getBoolWithoutLibraryUsingGetNPForAntiSpam {
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  void setBoolWithoutLibraryUsingGetNPForAntiSpam(
      BoolWithoutLibrary boolWithoutLibrary)
  {
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP,boolWithoutLibrary);
  }

  void notifyStreamBoolWithoutLibraryUsingGetNPForAntiSpam() {
    notifyStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }
}