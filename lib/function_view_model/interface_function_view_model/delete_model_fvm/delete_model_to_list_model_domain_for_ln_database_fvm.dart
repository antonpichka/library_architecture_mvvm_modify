

import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_network_list_model_fvm.dart';

abstract class DeleteModelToListModelDomainForLNDatabaseFVM
    implements DeleteModelToListModelLocalDatabaseFVM,
                DeleteModelToNetworkListModelFVM
{
}