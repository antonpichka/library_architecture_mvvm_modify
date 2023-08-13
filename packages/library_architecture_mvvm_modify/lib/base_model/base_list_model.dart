import 'package:library_architecture_mvvm_modify/base_model/base_model_q_named_iterator/base_model_q_named_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:meta/meta.dart';

abstract base class BaseListModel<T extends BaseModel> {
  final List<T>? listModel;

  final ExceptionController exceptionController;

  BaseListModel.success(this.listModel)
      : exceptionController = ExceptionController.success();
  BaseListModel.exception(BaseException exception)
      : listModel = null,
        exceptionController = ExceptionController.exception(exception);

  BaseListModel<T> get getCloneListModel;

  @nonVirtual
  void modelQNamedIterator(BaseModelQNamedIterator<T> modelQNamedIterator) {
    final sortedListModel = modelQNamedIterator.getSortedListModel(
        getCloneListModel.listModel ?? List.empty(growable: true));
    listModel?.clear();
    listModel?.addAll(sortedListModel);
  }

  @nonVirtual
  void insertToListModel(T model) {
    listModel?.add(model);
  }

  @nonVirtual
  void updateToListModel(T model) {
    listModel?[listModel!.indexWhere(
        (T itemModel) => itemModel.uniqueId == model.uniqueId)] = model;
  }

  @nonVirtual
  void deleteToListModel(String uniqueIdByModel) {
    listModel
        ?.removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
  }

  @nonVirtual
  void insertListToListModel(List<T> list) {
    listModel?.addAll(list);
  }

  @nonVirtual
  void updateListToListModel(List<T> list) {
    for (T item in list) {
      listModel?[listModel!.indexWhere(
          (T itemModel) => itemModel.uniqueId == item.uniqueId)] = item;
    }
  }

  @nonVirtual
  void deleteListToListModel(List<String> listUniqueIdByModel) {
    for (String uniqueIdByModel in listUniqueIdByModel) {
      listModel
          ?.removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
    }
  }
}
