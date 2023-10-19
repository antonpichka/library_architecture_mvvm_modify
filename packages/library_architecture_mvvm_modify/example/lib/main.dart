// ignore_for_file: unnecessary_overrides

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
  IPAddress get getCloneModel => IPAddress(ip, country);

  @override
  String toString() {
    return "ip: $ip, country: $country";
  }
}

@immutable
base class ListIPAddress<T extends IPAddress> extends BaseListModel<T> {
  const ListIPAddress(super.listModel) : super();

  @override
  ListIPAddress<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListIPAddress<T>(newListModel);
  }
}

final class HttpClientService {
  static final HttpClientService instance = HttpClientService._();
  http.Client? _httpClient;

  HttpClientService._();

  http.Client? get getHttpClient {
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

// QQ (Delimiter and variable name) Q (Delimiter)
// (Operation) QQ (Model) Q (NamedService) Q (NP/ParameterNamed) QQ (ForNamed) QQ (WhereNamed)
// OperationQQModelQNamedServiceQNP||ParameterNamed(QQForNamedQQWhereNamed)
// Variable name: (result)IPAddressForJsonipAPI
@immutable
base class GetQQIPAddressQHttpClientServiceQNPQQForJsonipAPI<
    T extends IPAddress, Y extends ListIPAddress<T>> {
  @protected
  final httpClientService = HttpClientService.instance;

  Future<Result<T>> getIPAddressHttpClientServiceNPForJsonipAPI() async {
    try {
      final response = await httpClientService.getHttpClient
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

@immutable
final class MainViewQViewModel extends BaseNamedViewQViewModel<DataForMainView,
    DefaultStreamAndStateQDataForNamed<DataForMainView>> {
  // OperationQQModelQNamedServiceQNP||ParameterNamed(QQForNamedQQWhereNamed)
  final _getQQIPAddressQHttpClientServiceQNPQQForJsonipAPI =
      GetQQIPAddressQHttpClientServiceQNPQQForJsonipAPI();

  // NamedUtility

  MainViewQViewModel()
      : super(DefaultStreamAndStateQDataForNamed(
            DataForMainView(true, const IPAddress("", ""))));

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Future<String> init() async {
    final resultIPAddressForJsonipAPI =
        await _getQQIPAddressQHttpClientServiceQNPQQForJsonipAPI
            .getIPAddressHttpClientServiceNPForJsonipAPI();
    if (resultIPAddressForJsonipAPI.exceptionController
        .isNotEqualsNullParameterException()) {
      return _firstQInitQGetIPAddressHttpClientServiceNPForJsonipAPI(
          resultIPAddressForJsonipAPI);
    }
    getDataForNamed.isLoading = false;
    getDataForNamed.ipAddress =
        resultIPAddressForJsonipAPI.parameter?.getCloneModel ??
            const IPAddress("", "");
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQInitQGetIPAddressHttpClientServiceNPForJsonipAPI(
      Result<IPAddress> resultIPAddressForJsonipAPI) async {
    getDataForNamed.isLoading = false;
    getDataForNamed.exceptionController =
        resultIPAddressForJsonipAPI.exceptionController;
    return resultIPAddressForJsonipAPI
        .exceptionController.getKeyParameterException;
  }
}

final class MainView {
  late final MainViewQViewModel _mainViewQViewModel;

  void initState() {
    _mainViewQViewModel = MainViewQViewModel();
    _init();
  }

  void dispose() {
    _mainViewQViewModel.dispose();
  }

  void build() {
    final dataForNamed = _mainViewQViewModel.getDataForNamed;
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
    _mainViewQViewModel.getStreamDataForNamed.listen((event) {
      build();
    });
    final result = await _mainViewQViewModel.init();
    debugPrint("MainView: $result");
    _mainViewQViewModel.notifyStreamDataForNamed();
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
