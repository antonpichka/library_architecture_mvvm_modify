import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

///
/// Contradicts the interface separation principle. Well, you will lose less time on development, since you will already have all the methods
///
abstract class DataSource<T extends BaseModelNamedDatabase,Y extends BaseListModelNamedDatabase>
    implements
        InsertModelToNamedDatabaseThereIsParameterDataSource<T>,
        UpdateModelToNamedDatabaseThereIsParameterDataSource<T>,
        DeleteModelToNamedDatabaseThereIsParameterDataSource<T>,
        InsertListModelToNamedDatabaseThereIsParameterDataSource<Y>,
        UpdateListModelToNamedDatabaseThereIsParameterDataSource<Y>,
        DeleteListModelToNamedDatabaseThereIsParameterDataSource<Y>,
        GetListModelFromNamedDatabaseDataSource<Y>,
        GetListModelFromNamedDatabaseThereIsParameterDataSource<Y>,
        GetModelFromNamedDatabaseThereIsParameterDataSource<T>
{
}