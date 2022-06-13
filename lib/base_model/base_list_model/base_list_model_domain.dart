import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class BaseListModelDomain<T extends BaseModelDomain>
{
  List<T> _listModelDomain;
  BaseIterator _iterator;

  BaseListModelDomain(this._listModelDomain);

  @nonVirtual
  List<T> get getListModelDomain {
    return _listModelDomain;
  }

  @nonVirtual
  set setListModelDomainByBaseListModelDomain(BaseListModelDomain listModelDomain) {
    _listModelDomain = listModelDomain.getListModelDomain;
  }

  @nonVirtual
  set setListModelDomain(List<T> list) {
    _listModelDomain = list;
  }

  @nonVirtual
  set _setIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listModelDomain;
  }

  @nonVirtual
  Response<bool, BaseException> runIteratorForGetListModel(
      EnumTypeParameter enumTypeParameter,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    try {
      if(mapEnumAndBaseIterator.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"Map isEmpty"));
      }
      int i = 0;
      mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
        if (enumTypeParameter.getParameter == itemEnum)
        {
          _setIterator = baseIterator;
        }
        i++;
        if (i >= mapEnumAndBaseIterator.length)
        {
          if (_iterator == null)
          {
            _setIterator = mapEnumAndBaseIterator[0];
          }
        }
      });
      if(_iterator != null) {
        _listModelDomain = _iterator.getSortedList;
      } else {
        return Response.exception(LocalException(constDeveloper,"null Iterator"));
      }
      return Response.success(true);
    } catch(e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  /* Start Using to Classes ReadyListModelDomainForLNDatabaseFVM */

  Response<bool, BaseException> insertListModelToGetListModel(List<T> listModel)
  {
    try {
      for(T model in listModel) {
        _listModelDomain.add(model);
      }
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }
  
  Response<bool, BaseException> insertModelToGetListModel(T model)
  {
    try {
      _listModelDomain.add(model);
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> updateListModelToGetListModel(List<T> listModel)
  {
    try {
      if (_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }

      for(int i = 0; i < listModel.length; i++) {
        _listModelDomain[_listModelDomain.indexWhere((element) => element.uniqueId == listModel[i].uniqueId)] = listModel[i];
      }
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> updateModelToGetListModel(T model)
  {
    try {
      if (_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }
      _listModelDomain[_listModelDomain.indexWhere((element) => element.uniqueId == model.uniqueId)] = model;
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> deleteListModelToGetListModel(List<T> listModel)
  {
    try {
      if(_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }

      List<T> toListDelete = List.empty(growable: true);

      for(int i = 0; i < _listModelDomain.length; i++) {
        for(int j = 0; j < listModel.length; j++) {
          if (_listModelDomain[i].uniqueId == listModel[j].uniqueId) {
            toListDelete.add(_listModelDomain[i]);
          }
        }
      }
      for(int i = 0; i < _listModelDomain.length; i++) {
        for(T deleteModelDomain in toListDelete) {
          if(_listModelDomain[i].uniqueId == deleteModelDomain.uniqueId) {
            _listModelDomain.removeAt(i);
          }
        }
      }
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> deleteModelToGetListModel(T model)
  {
    try {
      if(_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }
      _listModelDomain.removeWhere((item) => item.uniqueId == model.uniqueId);
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 /* End Using to Classes ReadyListModelDomainForLNDatabaseFVM */

}