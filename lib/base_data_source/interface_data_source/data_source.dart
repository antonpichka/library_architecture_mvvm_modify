import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';

abstract class DataSource<T extends BaseModelNamedDatabase,Y extends BaseListModelNamedDatabase,U extends BaseTypeParameter>
    implements
        InsertModelToNamedDatabaseTIPDataSource<T>,
        UpdateModelToNamedDatabaseTIPDataSource<T>,
        DeleteModelToNamedDatabaseTIPDataSource<T>,
        InsertListModelToNamedDatabaseTIPDataSource<Y>,
        UpdateListModelToNamedDatabaseTIPDataSource<Y>,
        DeleteListModelToNamedDatabaseTIPDataSource<Y>,
        GetListModelFromNamedDatabaseNPDataSource<Y>,
        GetListModelFromNamedDatabaseParameterNamedDataSource<Y,U>,
        GetModelFromNamedDatabaseParameterNamedDataSource<T,U>
{
}