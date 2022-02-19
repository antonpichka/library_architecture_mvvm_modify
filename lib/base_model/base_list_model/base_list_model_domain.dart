import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class BaseListModelDomain<T extends BaseModelDomain> {
  List<T> _listModelDomain = List.empty();
  BaseIterator _iterator;

  BaseListModelLocalDatabase toBaseListModelLocalDatabase();
  BaseListModelNetworkDatabase toBaseListModelNetworkDatabase();

  List<T> get getListModelDomain {
    return _listModelDomain;
  }

  set setListModelDomainFromBaseListModelDomain(BaseListModelDomain listModelDomain) {
    _listModelDomain = listModelDomain.getListModelDomain;
  }

  set setListModelDomain(List<T> list) {
    _listModelDomain = list;
  }

  Response<bool, BaseException> selectIteratorViaEnumTypeParameter(
      EnumTypeParameter enumTypeParameter,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator
      )
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
        return Response.exception(LocalException(constDeveloper,"Iterator equals null"));
      }
      return Response.success(true);
    } catch(e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  /* Start Using to Classes ReadyListModelDomainForLNDatabaseFVM */

  Response<bool, BaseException> insertListModelToListModelDomain(List<T> listModel)
  {
    try {
      var _tempList =  List.generate(_listModelDomain.length,(index) {
        return _listModelDomain[index];
      });
      _tempList.addAll(listModel);
      _listModelDomain = _tempList;
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }
  
  Response<bool, BaseException> insertModelToListModelDomain(T model)
  {
    try {
      var _tempList =  List.generate(_listModelDomain.length,(index) {
        return _listModelDomain[index];
      });
      _tempList.add(model);
      _listModelDomain = _tempList;
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> updateListModelToListModelDomain(List<T> listModel)
  {
    try {
      if (_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }
      var _tempList =  List.generate(_listModelDomain.length,(index) {
        return _listModelDomain[index];
      });

      for (int i = 0; i < _tempList.length; i++) {
        for(int j = 0; j < listModel.length; j++) {
          if (_tempList[i].uniqueId == listModel[j].uniqueId) {
            _tempList.setAll(i, [listModel[j]]);
          }
        }
      }
      _listModelDomain = _tempList;
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> updateModelToListModelDomain(T model)
  {
    try {
      if (_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }
      var _tempList =  List.generate(_listModelDomain.length,(index) {
        return _listModelDomain[index];
      });

      for (int i = 0; i < _tempList.length; i++) {
        if (_tempList[i].uniqueId == model.uniqueId) {
          _tempList.setAll(i, [model]);
          _listModelDomain = _tempList;
          return Response.success(true);
        }
      }
      return Response.exception(LocalException(constDeveloper,"ListModelDomain Not isEquals Parameter UniqueId"));
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> deleteListModelToListModelDomain(List<T> listModel)
  {
    try {
      if(_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }
      var _tempList =  List.generate(_listModelDomain.length,(index) {
        return _listModelDomain[index];
      });

      for(int i = 0; i < _tempList.length; i++) {
        for(int j = 0; j < listModel.length; j++) {
          if (_tempList[i].uniqueId == listModel[j].uniqueId) {
            _tempList.removeAt(i);
          }
        }
      }
      _listModelDomain = _tempList;
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> deleteModelToListModelDomain(T model)
  {
    try {
      if(_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }

      var _tempList = List.generate(_listModelDomain.length,(index) {
        return _listModelDomain[index];
      });

      for(int i = 0; i < _tempList.length; i++) {
        if(_tempList[i].uniqueId == model.uniqueId) {
          _tempList.removeAt(i);
          _listModelDomain = _tempList;
          return Response.success(true);
        }
      }
      return Response.exception(LocalException(constDeveloper,"ListModelDomain Not isEquals Parameter UniqueId"));
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 /* End Using to Classes ReadyListModelDomainForLNDatabaseFVM */

  set _setIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listModelDomain;
  }
}