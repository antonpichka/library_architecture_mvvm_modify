import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TypeForSP {
  final EnumTypeForSP _enumTypeForSP;

  TypeForSP.typeString() :
       _enumTypeForSP =  EnumTypeForSP.string;

  TypeForSP.typeInt() :
        _enumTypeForSP =  EnumTypeForSP.int;

  TypeForSP.typeBool() :
        _enumTypeForSP =  EnumTypeForSP.bool;

  TypeForSP.typeDouble() :
        _enumTypeForSP =  EnumTypeForSP.double;

  TypeForSP.typeListString() :
        _enumTypeForSP =  EnumTypeForSP.listString;

  EnumTypeForSP get getEnumTypeForSP {
    return _enumTypeForSP;
  }
}

enum EnumTypeForSP {
  string,
  int,
  bool,
  double,
  listString
}

abstract class BaseModelSharedPreferenceDatabaseDataSource<T extends BaseModelNamedDatabase>
{
  static SharedPreferences _sharedPreferences;

  @protected
  T fromMapToBaseModelSharedPreferenceDatabase(Map<String, dynamic> map);

  @protected
  Future<SharedPreferences> get sharedPreferences async {
    if(_sharedPreferences != null) {
      return _sharedPreferences;
    }
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences;
  }

  @protected
  Future<Response<bool,LocalException>> baseInsertModelToSharedPreferenceDatabaseTIP(
      T model)
  async {
    try {
      final sP = await sharedPreferences;
      model.toMap().forEach((key, value) {
        if(value is String) {
          sP.setString(key, value);
        } else if(value is int) {
          sP.setInt(key, value);
        } else if(value is bool) {
          sP.setBool(key, value);
        } else if(value is double) {
          sP.setDouble(key, value);
        } else if(value is List<String>) {
          sP.setStringList(key, value);
        }
      });
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(this,e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<bool,LocalException>> baseDeleteModelToSharedPreferenceDatabaseTIP(
      Map<String,TypeForSP> mapStringAndTypeForSP)
  async {
    try {
      final sP = await sharedPreferences;
      mapStringAndTypeForSP.forEach((key, value) {
        sP.remove(key);
      });
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(this,e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<T,LocalException>> baseGetModelFromSharedPreferenceDatabaseParameterMapStringAndTypeForSP(
      Map<String,TypeForSP> mapStringAndTypeForSP)
  async {
    try {
      final sP = await sharedPreferences;
      Map<String,dynamic> map = {};

      mapStringAndTypeForSP.forEach((key, value) {
        switch(value.getEnumTypeForSP) {
          case EnumTypeForSP.string:
            var strField = sP.getString(key) ?? "";
            map[key] = strField;
            break;
          case EnumTypeForSP.int:
            var intField = sP.getInt(key) ?? 0;
            map[key] = intField;
            break;
          case EnumTypeForSP.bool:
            var boolField = sP.getBool(key) ?? false;
            map[key] = boolField;
            break;
          case EnumTypeForSP.double:
            var doubleField = sP.getDouble(key) ?? 0.0;
            map[key] = doubleField;
            break;
          case EnumTypeForSP.listString:
            var listStringField = sP.getStringList(key) ?? List.empty();
            map[key] = listStringField;
            break;
        }
      });
      return Response.success(fromMapToBaseModelSharedPreferenceDatabase(map));
    } catch (e) {
      return Response.exception(LocalException(this,e.runtimeType.toString(),e.toString()));
    }
  }
}