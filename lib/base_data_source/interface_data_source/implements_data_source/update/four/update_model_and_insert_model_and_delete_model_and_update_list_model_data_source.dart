import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class UpdateModelAndInsertModelAndDeleteModelAndUpdateListModelDataSource<T extends BaseModelNamedDatabase, Y extends BaseListModelNamedDatabase>
    implements
        UpdateModelToNamedDatabaseThereIsParameterDataSource<T>,
        InsertModelToNamedDatabaseThereIsParameterDataSource<T>,
        DeleteModelToNamedDatabaseThereIsParameterDataSource<T>,
        UpdateListModelToNamedDatabaseThereIsParameterDataSource<Y>
{
}