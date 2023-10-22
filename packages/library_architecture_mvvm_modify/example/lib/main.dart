import 'dart:convert';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

@immutable
base class IPAddress extends BaseModel {
  final String ip;
  final String country;

  const IPAddress(this.ip, this.country) : super(ip);

  @override
  IPAddress get getClone => IPAddress(ip, country);

  @override
  String toString() {
    return "ip: $ip, country: $country";
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
final class KeysHttpClientServiceUtility {
  /* IPAddress */
  static const String iPAddressQIp = "ip";
  static const String iPAddressQCountry = "country";

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

// Minimum three 'EE'. Maximum four 'EE' - needed as a separator that helps to quickly understand what this class does
// OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
// () - optional
// [] - if available
// (EEWhereNamed) - describe in as much detail as possible what this class does
// [EEFromNamed] - if the method has parameters, then list
// Variable name - result(Generic)(WhereNamed)
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
      return Result<T>.success(IPAddress(
          data[KeysHttpClientServiceUtility.iPAddressQIp],
          data[KeysHttpClientServiceUtility.iPAddressQCountry]) as T);
    } on NetworkException catch (e) {
      return Result<T>.exception(e);
    } catch (e) {
      return Result<T>.exception(LocalException(this,
          EnumGuiltyForLocalException.device, KeysExceptionUtility.uNKNOWN));
    }
  }
}

final class DataForMainView extends BaseDataForNamed<EnumDataForMainView> {
  IPAddress ipAddress;

  DataForMainView(super.isLoading, this.ipAddress);

  @override
  EnumDataForMainView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForMainView.isLoading;
    }
    if (exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForMainView.exception;
    }
    return EnumDataForMainView.success;
  }
}

enum EnumDataForMainView { isLoading, exception, success }

// private methods:
// numberQWhichMethodIsItInQWhichMethodTriggersTheCreationOfAPrivateMethod
// private methods to private methods:
// numberBranchNumberQWhichMethodIsItInQWhichMethodTriggersTheCreationOfAPrivateMethod
// private methods to private methods to private methods:
// numberBranchNumberBranchNumberQWhichMethodIsItInQWhichMethodTriggersTheCreationOfAPrivateMethod
@immutable
final class MainViewModel extends BaseNamedViewModel<DataForMainView,
    DefaultStreamWState<DataForMainView>> {
  // OperationResultModel(InNamedWhereNamed)[FromNamed]ParameterNamedService
  final _getEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService =
      GetEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService();

  // NamedUtility

  MainViewModel()
      : super(DefaultStreamWState(
            DataForMainView(true, const IPAddress("", ""))));

  @override
  Future<String> init() async {
    final resultIPAddressWhereJsonipAPI =
        await _getEEIPAddressEEWhereJsonipAPIEEParameterHttpClientService
            .getIPAddressWhereJsonipAPIParameterHttpClientService();
    if (resultIPAddressWhereJsonipAPI.exceptionController
        .isNotEqualsNullParameterException()) {
      return _firstQInitQGetIPAddressWhereJsonipAPIParameterHttpClientService(
          resultIPAddressWhereJsonipAPI);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.ipAddress =
        resultIPAddressWhereJsonipAPI.parameter?.getClone ??
            const IPAddress("", "");
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String>
      _firstQInitQGetIPAddressWhereJsonipAPIParameterHttpClientService(
          Result<IPAddress> resultIPAddressWhereJsonipAPI) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController =
        resultIPAddressWhereJsonipAPI.exceptionController;
    return resultIPAddressWhereJsonipAPI
        .exceptionController.getKeyParameterException;
  }
}

final class MainView {
  late final MainViewModel _mainViewModel;

  void initState() {
    _mainViewModel = MainViewModel();
    _init();
  }

  void dispose() {
    _mainViewModel.dispose();
  }

  void build() {
    final dataForNamed =
        _mainViewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamed.getEnumDataForNamed) {
      case EnumDataForMainView.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForMainView.exception:
        debugPrint(
            "Build: Exception(${dataForNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForMainView.success:
        debugPrint("Build: Success(${dataForNamed.ipAddress})");
        break;
      default:
        break;
    }
  }

  Future<void> _init() async {
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
  mainView.build();
  await Future.delayed(const Duration(seconds: 10));
  mainView.dispose();
  // EXPECTED OUTPUT:
  //
  // Build: IsLoading
  // MainView: sUCCESS
  // Build: Success(ip: ${your_ip}, country: ${your_country})
  //
  // Process finished with exit code 0
}
