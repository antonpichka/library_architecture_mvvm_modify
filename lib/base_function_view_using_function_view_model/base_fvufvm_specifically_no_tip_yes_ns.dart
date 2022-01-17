import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_function_view_using_function_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/extends_function_view_using_function_view_model/get_list_model_from_database_fvufvm/get_list_model_from_ln_database_fvufvm.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/extends_function_view_using_function_view_model/get_list_model_from_database_fvufvm/get_list_model_from_local_database_fvufvm.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/extends_function_view_using_function_view_model/get_list_model_from_database_fvufvm/get_list_model_from_network_database_fvufvm.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/extends_function_view_using_function_view_model/model_local_database_for_one_entry_fvufvm/get_model_from_local_database_for_one_entry_fvufvm.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseFVUFVMSpecificallyNoTIPYesNS<T>
    extends BaseFunctionViewUsingFunctionViewModel<T>
{
  static final GetListModelFromLNDatabaseFVUFVM _getListModelFromLNDatabaseFVUFVM = GetListModelFromLNDatabaseFVUFVM();
  static final GetListModelFromLocalDatabaseFVUFVM _getListModelFromLocalDatabaseFVUFVM = GetListModelFromLocalDatabaseFVUFVM();
  static final GetListModelFromNetworkDatabaseFVUFVM _getListModelFromNetworkDatabaseFVUFVM = GetListModelFromNetworkDatabaseFVUFVM();

  static final GetModelFromLocalDatabaseForOneEntryFVUFVM _getModelFromLocalDatabaseForOneEntryFVUFVM = GetModelFromLocalDatabaseForOneEntryFVUFVM();

  /* Start Method CallToMethodGetListModelFromLNDatabaseAndUseTheSettersFVUFVM */

  static GetListModelFromLNDatabaseFVUFVM get getListModelFromLNDatabaseFVUFVM {
    return _getListModelFromLNDatabaseFVUFVM;
  }

  static GetListModelFromLocalDatabaseFVUFVM get getListModelFromLocalDatabaseFVUFVM {
    return _getListModelFromLocalDatabaseFVUFVM;
  }

  static GetListModelFromNetworkDatabaseFVUFVM get getListModelFromNetworkDatabaseFVUFVM {
    return _getListModelFromNetworkDatabaseFVUFVM;
  }

  /* End Method CallToMethodGetListModelFromLNDatabaseAndUseTheSettersFVUFVM */

  /* Start Method CallToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVUFVM */

  static GetModelFromLocalDatabaseForOneEntryFVUFVM get getModelFromLocalDatabaseForOneEntryFVUFVM {
    return _getModelFromLocalDatabaseForOneEntryFVUFVM;
  }

  /* End Method CallToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVUFVM*/

  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel);

  Future<void> mainMethodAndNotifyStream(
      T paramMainMethod,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    mainMethod(
        paramMainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
    notifyStream(baseViewModel);
  }
}