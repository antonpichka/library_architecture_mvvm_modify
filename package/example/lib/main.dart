import 'dart:convert';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

@immutable
final class FactoryModelWrapperRepositoryUtility {
  const FactoryModelWrapperRepositoryUtility._();

  /* ModelWrapperRepository */
  static IPAddressWrapperRepository
      getIPAddressWrapperRepositoryFromNamedHttpClientService(
          BaseNamedHttpClientService namedHttpClientService) {
    return IPAddressWrapperRepository(namedHttpClientService);
  }
}

@immutable
final class KeysUrlEndpointUtility {
  /* JsonipAPI */
  static const String jsonipAPI = "https://jsonip.com";
  static const String jsonipAPIQQProviders = "$jsonipAPI/providers";

  const KeysUrlEndpointUtility._();
}

@immutable
final class ReadyDataUtility {
  static const String unknown = "unknown";
  static const String success = "success";

  const ReadyDataUtility._();
}

@immutable
final class KeysHttpClientServiceUtility {
  /* IPAddress */
  static const String iPAddressQQIp = "ip";

  const KeysHttpClientServiceUtility._();
}

@immutable
base class IPAddress extends BaseModel {
  final String ip;

  const IPAddress(this.ip) : super(ip);

  @override
  IPAddress clone() => IPAddress(ip);

  @override
  String toString() {
    return "IPAddress(ip: $ip)";
  }
}

@immutable
base class ListIPAddress<T extends IPAddress> extends BaseListModel<T> {
  const ListIPAddress(super.listModel) : super();

  @override
  ListIPAddress<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T model in listModel) {
      newListModel.add(model.clone() as T);
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

@immutable
base class IPAddressWrapper extends BaseModelWrapper {
  const IPAddressWrapper(super.listObject);

  @override
  IPAddress createModel() {
    return IPAddress(listObject[0]);
  }
}

@immutable
base class ListIPAddressWrapper extends BaseListModelWrapper {
  const ListIPAddressWrapper(super.listsListObject);

  @override
  ListIPAddress createListModel() {
    final List<IPAddress> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      listModel.add(IPAddress(itemListObject[0]));
    }
    return ListIPAddress(listModel);
  }
}

abstract class BaseNamedHttpClient {
  const BaseNamedHttpClient();

  Future<http.Response> get(Uri url, {Map<String, String>? headers});

  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, body, Encoding? encoding});

  void close();
}

final class DefaultHttpClient extends BaseNamedHttpClient {
  final http.Client _client;

  const DefaultHttpClient(this._client);

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return _client.get(url, headers: headers);
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return _client.post(url, headers: headers, body: body, encoding: encoding);
  }

  @override
  void close() {
    _client.close();
  }
}

final class TimeoutHttpClient extends BaseNamedHttpClient {
  final http.Client _client;
  final Duration _timeout;

  const TimeoutHttpClient(this._client, this._timeout);

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return _client.get(url, headers: headers).timeout(_timeout);
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return _client
        .post(url, headers: headers, body: body, encoding: encoding)
        .timeout(_timeout);
  }

  @override
  void close() {
    _client.close();
  }
}

abstract class BaseNamedHttpClientService {
  const BaseNamedHttpClientService();

  BaseNamedHttpClient? get getParameterNamedHttpClient;
}

final class DefaultHttpClientService extends BaseNamedHttpClientService {
  static final DefaultHttpClientService instance = DefaultHttpClientService._();
  BaseNamedHttpClient? _namedHttpClient;

  DefaultHttpClientService._();

  @override
  BaseNamedHttpClient? get getParameterNamedHttpClient {
    if (_namedHttpClient != null) {
      return _namedHttpClient;
    }
    _namedHttpClient = DefaultHttpClient(http.Client());
    return _namedHttpClient;
  }
}

final class TimeoutHttpClientService extends BaseNamedHttpClientService {
  static final TimeoutHttpClientService instance = TimeoutHttpClientService._();
  BaseNamedHttpClient? _namedHttpClient;

  TimeoutHttpClientService._();

  @override
  BaseNamedHttpClient? get getParameterNamedHttpClient {
    if (_namedHttpClient != null) {
      return _namedHttpClient;
    }
    _namedHttpClient =
        TimeoutHttpClient(http.Client(), const Duration(seconds: 5));
    return _namedHttpClient;
  }
}

@immutable
base class IPAddressWrapperRepository<T extends IPAddressWrapper,
    Y extends ListIPAddressWrapper> extends BaseModelWrapperRepository {
  @protected
  final BaseNamedHttpClientService namedHttpClientService;

  const IPAddressWrapperRepository(this.namedHttpClientService);

  @override
  void dispose() {}

  Future<ResultWithModelWrapper<T>>
      getIPAddressParameterNamedHttpClientService() async {
    try {
      final response = await namedHttpClientService.getParameterNamedHttpClient
          ?.get(Uri.parse(KeysUrlEndpointUtility.jsonipAPI));
      if (response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this,
            response?.statusCode.toString() ?? "", response?.statusCode ?? 0);
      }
      final Map<String, dynamic> data = jsonDecode(response?.body ?? "");
      final ipByIPAddress = getSafeValueFromMapAndKeyAndDefaultValue(
          data, KeysHttpClientServiceUtility.iPAddressQQIp, "");
      return ResultWithModelWrapper.success(
          IPAddressWrapper([ipByIPAddress]) as T);
    } on NetworkException catch (e) {
      return ResultWithModelWrapper.exception(e);
    } catch (e) {
      return ResultWithModelWrapper.exception(LocalException(
          this, EnumGuilty.device, ReadyDataUtility.unknown, e.toString()));
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
  // ModelWrapperRepository
  final _iPAddressWrapperRepository = FactoryModelWrapperRepositoryUtility
      .getIPAddressWrapperRepositoryFromNamedHttpClientService(
          TimeoutHttpClientService.instance);

  // TempCacheProvider
  final _tempCacheProvider = TempCacheProvider();

  // NamedUtility

  // NamedStreamWState
  late final BaseNamedStreamWState<DataForMainVM> _namedStreamWState;

  MainVM() {
    _namedStreamWState = DefaultStreamWState<DataForMainVM>(
        DataForMainVM(true, const IPAddress("")));
  }

  Future<void> init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      _build();
    });
    final firstRequest = await _firstRequest();
    debugPrint("MainVM: $firstRequest");
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void dispose() {
    _iPAddressWrapperRepository.dispose();
    _tempCacheProvider.dispose([]);
    _namedStreamWState.dispose();
  }

  void _build() {
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch (dataWNamed.getEnumDataForNamed) {
      case EnumDataForMainVM.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForMainVM.exception:
        debugPrint(
            "Build: Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForMainVM.success:
        debugPrint("Build: Success(${dataWNamed.iPAddress})");
        break;
      default:
        break;
    }
  }

  Future<String> _firstRequest() async {
    final getIPAddressParameterNamedHttpClientService =
        await _iPAddressWrapperRepository
            .getIPAddressParameterNamedHttpClientService();
    if (getIPAddressParameterNamedHttpClientService.exceptionController
        .isWhereNotEqualsNullParameterException()) {
      return _firstQQFirstRequestQQGetIPAddressParameterNamedHttpClientService(
          getIPAddressParameterNamedHttpClientService.exceptionController);
    }
    _namedStreamWState.getDataForNamed.isLoading = false;
    _namedStreamWState.getDataForNamed.iPAddress =
        getIPAddressParameterNamedHttpClientService.modelWrapper!.createModel();
    return ReadyDataUtility.success;
  }

  Future<String>
      _firstQQFirstRequestQQGetIPAddressParameterNamedHttpClientService(
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
// MainVM: success
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
