import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class UpdateModelAndInsertListModelAndDeleteListModelDataSource<T extends BaseModelNamedDatabase, Y extends BaseListModelNamedDatabase>
    implements UpdateModelToNamedDatabaseThereIsParameterDataSource<T>,InsertListModelToNamedDatabaseThereIsParameterDataSource<Y>,DeleteListModelToNamedDatabaseThereIsParameterDataSource<Y>
{
}