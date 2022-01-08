

import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_list_model_fvm.dart';

abstract class UpdateModelToLNListModelFVM
    implements
        UpdateModelToLocalListModelFVM,
        UpdateModelToNetworkListModelFVM
{
}