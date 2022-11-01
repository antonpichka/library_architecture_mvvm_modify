/*
 * Designed and developed by 2022 JacobOdd (Anton Pichka)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseModelSqfliteDatabaseDataSource<T extends BaseModelNamedDatabase, Y extends BaseListModelNamedDatabase<BaseListModel,T>>
{
  @protected
  final String fileDatabase;
  @protected
  final int version;
  @protected
  final Function(Database) onConfigure;
  @protected
  final Function(Database) onOpen;
  @protected
  final Function(Database,int) onCreate;
  @protected
  final Function(Database,int,int) onUpgrade;
  @protected
  final Function(Database,int,int) onDowngrade;

  static final Map<String, Database> _mapFilenameAndDatabase = {};

  BaseModelSqfliteDatabaseDataSource(
      {this.fileDatabase,
        this.version,
        this.onConfigure,
        this.onOpen,
        this.onCreate,
        this.onUpgrade,
        this.onDowngrade}
      );
  
  @protected
  T fromMapToBaseModelSqfliteDatabase(
      Map<String, dynamic> map);

  @protected
  Y fromListMapToBaseListModelSqfliteDatabase(
      List<Map<String, dynamic>> map);

  @protected
  Future<Database> get getDatabase
  async {
    if (_mapFilenameAndDatabase.containsKey(fileDatabase)) {
      return _mapFilenameAndDatabase[fileDatabase];
    }
    _mapFilenameAndDatabase[fileDatabase] = await _initDB();
    return _mapFilenameAndDatabase[fileDatabase];
  }

  @protected
  Future<Response<int,LocalException>> baseInsertModelToSqfliteDatabaseTIP(
      T model,
      String table,
      [ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace])
  async {
    try {
      final db = await getDatabase;
      int resultInsert = await db.insert(
          table,
          model.toMap(),
          conflictAlgorithm: conflictAlgorithm
      );
      if(resultInsert <= 0) {
        return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,"Zero insert for insertModelToSqfliteDatabaseTIP $resultInsert"));
      }
      return Response.success(resultInsert);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseInsertListModelToSqfliteDatabaseTIP(
      Y listModelSqfliteDatabase,
      String table,
      [ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace])
  async {
    try {
      final db = await getDatabase;
      int iterationForInsert = 0;
      for(BaseModelNamedDatabase model in listModelSqfliteDatabase.listModelNamedDatabase)
      {
        int resultInsert = await db.insert(
            table,
            model.toMap(),
            conflictAlgorithm: conflictAlgorithm
        );
        if(resultInsert > 0) {
          iterationForInsert++;
        }
      }
      if(iterationForInsert <= 0) {
        return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,"Zero insert for insertListModelToSqfliteDatabaseTIP $iterationForInsert"));
      }
      return Response.success(iterationForInsert);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseUpdateModelOrUpdateModelsToSqfliteDatabaseTIP(
      T model,
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?'])
  async {
    try {
      final db = await getDatabase;
      int resultUpdate = await db.update(
        table,
        model.toMap(),
        where: columnForWhere + columnForWhereOperationMark,
        whereArgs: [baseTypeParameter.getParameter],
      );
      if(resultUpdate <= 0) {
        return Response.exception(LocalException(this,EnumGuiltyForLocalException.developer,"Zero update for updateModelToSqfliteDatabaseTIP $resultUpdate"));
      }
      return Response.success(resultUpdate);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseUpdateListModelToSqfliteDatabaseTIP(
      Y listModelSqfliteDatabase,
      String table,
      String columnForUniqueId)
  async {
    try {
      final db = await getDatabase;
      int calculateForUpdate = 0;
      for(BaseModelNamedDatabase model in listModelSqfliteDatabase.listModelNamedDatabase)
      {
        int resultUpdate = await db.update(
          table,
          model.toMap(),
          where: columnForUniqueId + '= ?',
          whereArgs: [model.uniqueId],
        );
        if(resultUpdate > 0) {
          calculateForUpdate = calculateForUpdate + resultUpdate;
        }
      }
      if(calculateForUpdate <= 0) {
        return Response.exception(LocalException(this,EnumGuiltyForLocalException.developer,"Zero update for updateListModelToSqfliteDatabaseTIP $calculateForUpdate"));
      }
      return Response.success(calculateForUpdate);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseDeleteModelOrDeleteModelsToSqfliteDatabaseTIP(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?'])
  async {
    try {
      final db = await getDatabase;
      int resultDelete = await db.delete(
        table,
        where: columnForWhere + columnForWhereOperationMark,
        whereArgs: [baseTypeParameter.getParameter],
      );
      if(resultDelete <= 0) {
        return Response.exception(LocalException(this,EnumGuiltyForLocalException.developer,"Zero delete for deleteModelToSqfliteDatabaseTIP $resultDelete"));
      }
      return Response.success(resultDelete);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseDeleteListModelToSqfliteDatabaseTIP(
      Y listModelSqfliteDatabase,
      String table,
      String columnForUniqueId)
  async {
    try {
      final db = await getDatabase;
      int calculateForDelete = 0;
      for(BaseModelNamedDatabase model in listModelSqfliteDatabase.listModelNamedDatabase)
      {
        var resultDelete = await db.delete(
          table,
          where: columnForUniqueId + '= ?',
          whereArgs: [model.uniqueId],
        );
        if(resultDelete > 0) {
          calculateForDelete = calculateForDelete + resultDelete ;
        }
      }
      if(calculateForDelete <= 0) {
        return Response.exception(LocalException(this,EnumGuiltyForLocalException.developer,"Zero delete for deleteListModelToSqfliteDatabaseTIP $calculateForDelete"));
      }
      return Response.success(calculateForDelete);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<T,LocalException>> baseGetModelFromSqfliteDatabaseParameterBaseType(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      )
  async {
    try {
      final db = await getDatabase;
      List<Map<String, dynamic>> maps = await db.query(
          table,
          where: columnForWhere + columnForWhereOperationMark,
          whereArgs: [baseTypeParameter.getParameter]
      );
      if(maps.isEmpty) {
        return Response.exception(LocalException(this,EnumGuiltyForLocalException.developer,"Model not found for getModelFromSqfliteDatabaseParameterBaseType"));
      }
      return Response.success(fromMapToBaseModelSqfliteDatabase(maps[0]));
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<Y,LocalException>> baseGetListModelFromSqfliteDatabaseNP(
      String table)
  async {
    try {
      final db = await getDatabase;
      List<Map<String, dynamic>> maps = await db.query(table);
      return Response.success(fromListMapToBaseListModelSqfliteDatabase(maps));
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Future<Response<Y,LocalException>> baseGetListModelFromSqfliteDatabaseParameterBaseType(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']) async
  {
    try {
      final db = await getDatabase;
      List<Map<String, dynamic>> maps = await db.query(
          table,
          where: columnForWhere + columnForWhereOperationMark,
          whereArgs: [baseTypeParameter.getParameter]
      );
      return Response.success(fromListMapToBaseListModelSqfliteDatabase(maps));
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
  
  Future<Response<int,LocalException>> baseClearTableToSqfliteDatabase(
      String table)
  async {
    try {
      final db = await getDatabase;
      int result = await db.delete(table);
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, fileDatabase);
    return await openDatabase(path, version: version,
        onConfigure: (Database db) async {
          onConfigure(db);
        },
        onOpen: (Database db) async {
          onOpen(db);
        },
        onCreate: (Database db, int version) async {
          onCreate(db,version);
        },
        onUpgrade: (Database db, int oldVersion, int newVersion)  async{
          onUpgrade(db,oldVersion,newVersion);
        },
        onDowngrade: (Database db, int oldVersion, int newVersion) async {
          onDowngrade(db,oldVersion,newVersion);
        });
  }

}
