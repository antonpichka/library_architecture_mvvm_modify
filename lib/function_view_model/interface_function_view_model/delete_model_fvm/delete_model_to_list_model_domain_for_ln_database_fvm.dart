import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_network_database_fvm.dart';

abstract class DeleteModelToListModelDomainForLNDatabaseFVM
        implements DeleteModelToListModelDomainForLocalDatabaseFVM,
                   DeleteModelToListModelDomainForNetworkDatabaseFVM
{
}