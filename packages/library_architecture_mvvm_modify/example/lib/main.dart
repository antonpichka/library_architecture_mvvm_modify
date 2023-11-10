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
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListIPAddress<T>(newListModel);
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
          ?.get(Uri.parse("https://jsonip.com/"));
      if (response?.statusCode != 200) {
        throw NetworkException.fromKeyAndStatusCode(this,
            response?.statusCode.toString() ?? "", response?.statusCode ?? 0);
      }
      final Map<String, dynamic> data = jsonDecode(response!.body);
      return Result<T>.success(
          IPAddress(data[KeysHttpClientServiceUtility.iPAddressQQIp]) as T);
    } on NetworkException catch (e) {
      return Result<T>.exception(e);
    } catch (e) {
      return Result<T>.exception(LocalException(
          this, EnumGuilty.device, KeysExceptionUtility.uNKNOWN, e.toString()));
    }
  }
}

final class DataForMainView extends BaseDataForNamed<EnumDataForMainView> {
  IPAddress iPAddress;

  DataForMainView(super.isLoading, this.iPAddress);

  @override
  EnumDataForMainView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForMainView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForMainView.exception;
    }
    return EnumDataForMainView.success;
  }
}

enum EnumDataForMainView { isLoading, exception, success }

@immutable
final class MainViewModel extends BaseNamedViewModel<DataForMainView,
    DefaultStreamWState<DataForMainView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService =
      GetEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService();

  // NamedUtility

  MainViewModel()
      : super(DefaultStreamWState(DataForMainView(true, const IPAddress(""))));

  @override
  Future<String> init() async {
    final getIPAddressWhereJsonipAPIParameterHttpClientService =
        await _getEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService
            .getIPAddressWhereJsonipAPIParameterHttpClientService();
    if (getIPAddressWhereJsonipAPIParameterHttpClientService.exceptionController
        .isWhereNotEqualsNullParameterException()) {
      return _firstQQInitQQGetIPAddressWhereJsonipAPIParameterHttpClientService(
          getIPAddressWhereJsonipAPIParameterHttpClientService
              .exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.iPAddress =
        getIPAddressWhereJsonipAPIParameterHttpClientService
            .parameter!.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String>
      _firstQQInitQQGetIPAddressWhereJsonipAPIParameterHttpClientService(
          ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController =
        exceptionController;
    return exceptionController.getKeyParameterException;
  }
}

final class MainView {
  late final MainViewModel _mainViewModel;

  // Override
  void initState() {
    _mainViewModel = MainViewModel();
    _initParameterMainViewModel();
  }

  // Override
  void dispose() {
    _mainViewModel.dispose();
  }

  // Override
  void build() {
    final dataForNamedParameterNamedStreamWState =
        _mainViewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForMainView.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForMainView.exception:
        debugPrint(
            "Build: Exception(${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForMainView.success:
        debugPrint(
            "Build: Success(${dataForNamedParameterNamedStreamWState.iPAddress})");
        break;
      default:
        break;
    }
  }

  Future<void> _initParameterMainViewModel() async {
    _mainViewModel.getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
      build();
    });
    final result = await _mainViewModel.init();
    debugPrint("MainView: $result");
    _mainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}

Future<void> main() async {
  // Simulations start MainView
  final mainView = MainView();
  mainView.initState();
  await Future.delayed(const Duration(seconds: 5));
  mainView.dispose();
  // EXPECTED OUTPUT:
  //
  // MainView: sUCCESS
  // Build: Success(IPAddress(ip: ${your_ip}))
  //
  // Process finished with exit code 0

  /// OR

  // EXPECTED OUTPUT:
  //
  // ===start_to_trace_exception===
  //
  // WhereHappenedException(Class) --> GetEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService<IPAddress, ListIPAddress<IPAddress>>
  // NameException(Class) --> ${NameException(Class)}
  // toString() --> ${toString()}
  //
  // ===end_to_trace_exception===
  //
  // MainView: ${getKeyParameterException}
  // Build: Exception(${getKeyParameterException})
  //
  // Process finished with exit code 0
}
