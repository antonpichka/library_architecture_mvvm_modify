import 'dart:convert';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

@immutable
final class KeysHttpClientServiceUtility {
  /* IPAddress */
  static const String iPAddressQQIp = "ip";

  const KeysHttpClientServiceUtility._();
}

@immutable
final class KeysExceptionUtility {
  /* UNKNOWN */
  static const String uNKNOWN = "uNKNOWN";

  const KeysExceptionUtility._();
}

@immutable
final class KeysSuccessUtility {
  /* SUCCESS */
  static const String sUCCESS = "sUCCESS";

  const KeysSuccessUtility._();
}

@immutable
base class IPAddress extends BaseModel {
  final String ip;

  const IPAddress(this.ip) : super(ip);

  @override
  IPAddress get getClone => IPAddress(ip);

  @override
  String toString() {
    return "IPAddress(ip: $ip)";
  }
}

@immutable
base class ListIPAddress<T extends IPAddress> extends BaseListModel<T> {
  const ListIPAddress(super.listModel) : super();

  @override
  ListIPAddress<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (final T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListIPAddress<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListIPAddress(listModel: [$strListModel])";
  }
}

final class HttpClientService {
  static final HttpClientService instance = HttpClientService._();
  http.Client? _httpClient;

  HttpClientService._();

  http.Client? get getParameterHttpClient {
    if (_httpClient != null) {
      return _httpClient;
    }
    _httpClient = http.Client();
    return _httpClient;
  }
}

@immutable
base class GetEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService<
    T extends IPAddress, Y extends ListIPAddress<T>> {
  @protected
  final httpClientService = HttpClientService.instance;

  Future<Result<T>>
      getIPAddressWhereJsonipAPIParameterHttpClientService() async {
    try {
      final response = await httpClientService.getParameterHttpClient
          ?.get(Uri.parse("https://jsonip.com/"))
          .timeout(const Duration(seconds: 5));
      if (response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this,
            response?.statusCode.toString() ?? "", response?.statusCode ?? 0);
      }
      final Map<String, dynamic> data = jsonDecode(response?.body ?? "");
      return Result<T>.success(
          IPAddress(data[KeysHttpClientServiceUtility.iPAddressQQIp] ?? "")
              as T);
    } on NetworkException catch (e) {
      return Result<T>.exception(e);
    } catch (e) {
      return Result<T>.exception(LocalException(
          this, EnumGuilty.device, KeysExceptionUtility.uNKNOWN, e.toString()));
    }
  }
}

enum EnumDataForMainVM { isLoading, exception, success }

final class DataForMainVM extends BaseDataForNamed<EnumDataForMainVM> {
  IPAddress iPAddress;

  DataForMainVM(super.isLoading, this.iPAddress);

  @override
  EnumDataForMainVM get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForMainVM.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForMainVM.exception;
    }
    return EnumDataForMainVM.success;
  }

  @override
  String toString() {
    return "DataForMainVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "iPAddress: $iPAddress)";
  }
}

final class MainVM {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService =
      GetEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService();
  // NamedUtility

  // Main objects
  late final BaseNamedStreamWState<DataForMainVM> _namedStreamWState;
  late final RWTMode _rwtMode;

  MainVM() {
    _namedStreamWState =
        DefaultStreamWState<DataForMainVM>(DataForMainVM(true, const IPAddress("")));
    _rwtMode = RWTMode(EnumRWTMode.release, [
      NamedCallback("init", _initReleaseCallback),
    ], [
      NamedCallback("init", _initTestCallback)
    ]);
  }

  Future<void> init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      _build();
    });
    final callback = await _rwtMode.getNamedCallbackFromName("init").callback();
    debugPrint("MainVM: $callback");
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void dispose() {
    _namedStreamWState.dispose();
  }

  void _build() {
    final dataForNamed = _namedStreamWState.getDataForNamed;
    switch (dataForNamed.getEnumDataForNamed) {
      case EnumDataForMainVM.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForMainVM.exception:
        debugPrint(
            "Build: Exception(${dataForNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForMainVM.success:
        debugPrint("Build: Success(${dataForNamed.iPAddress})");
        break;
      default:
        break;
    }
  }

  Future<String> _initReleaseCallback() async {
    final getIPAddressWhereJsonipAPIParameterHttpClientService = await _getEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService.getIPAddressWhereJsonipAPIParameterHttpClientService();
    if (getIPAddressWhereJsonipAPIParameterHttpClientService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService(getIPAddressWhereJsonipAPIParameterHttpClientService.exceptionController);
    }
    _namedStreamWState.getDataForNamed.isLoading = false;
    _namedStreamWState.getDataForNamed.iPAddress = getIPAddressWhereJsonipAPIParameterHttpClientService.parameter!.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _initTestCallback() async {
    // Simulation get "IPAddress"
    final iPAddress = IPAddress("121.121.12.12");
    await Future.delayed(Duration(milliseconds: 1000));
    _namedStreamWState.getDataForNamed.isLoading = false;
    _namedStreamWState.getDataForNamed.iPAddress = iPAddress.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String>
      _firstQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService(
          ExceptionController exceptionController) async {
    _namedStreamWState.getDataForNamed.isLoading = false;
    _namedStreamWState.getDataForNamed.exceptionController =
        exceptionController;
    return exceptionController.getKeyParameterException;
  }
}

Future<void> main() async {
  final mainVM = MainVM();
  await mainVM.init();
  mainVM.dispose();
}
// EXPECTED OUTPUT:
//
// MainVM: sUCCESS
// Build: Success(IPAddress(ip: ${your_ip}))
//
// Process finished with exit code 0

/// OR

// EXPECTED OUTPUT:
//
// ===start_to_trace_exception===
//
// WhereHappenedException(Class) --> ${WhereHappenedException(Class)}
// NameException(Class) --> ${NameException(Class)}
// toString() --> ${toString()}
//
// ===end_to_trace_exception===
//
// MainVM: ${getKeyParameterException}
// Build: Exception(${getKeyParameterException})
//
// Process finished with exit code 0
