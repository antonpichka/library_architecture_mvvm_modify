import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_list_model_domain_for_network_database_fvm.dart';

abstract class InsertModelToListModelDomainForLNDatabaseFVM
            implements
                InsertModelToListModelDomainForLocalDatabaseFVM,
                InsertModelToListModelDomainForNetworkDatabaseFVM
{
}