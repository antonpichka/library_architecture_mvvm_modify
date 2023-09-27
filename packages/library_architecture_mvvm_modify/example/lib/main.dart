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
  static const String iPAddressQNameCountry = "country";

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
base class IPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI<
        T extends IPAddress, Y extends ListIPAddress<T>>
    extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final httpClientService = HttpClientService.instance;

  Future<Result<T>> getIPAddressFromHttpClientServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceNPDS() async {
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
          data[KeysHttpClientServiceUtility.iPAddressQNameCountry]) as T);
    } on NetworkException catch (e) {
      return Result<T>.exception(e);
    } catch (e) {
      return Result<T>.exception(LocalException(this,
          EnumGuiltyForLocalException.device, KeysExceptionUtility.uNKNOWN));
    }
  }
}

final class DataForMainView extends BaseDataForNamed {
  IPAddress ipAddress;

  DataForMainView(super.isLoading, this.ipAddress);

  EnumDataForMainView get getEnumDataForMain {
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
final class InitializedDefaultStreamStateQDataForMainView
    extends BaseInitializedNamedStreamStateQDataForNamed<DataForMainView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForMainView>
      get getNamedStreamStateQDataForNamed =>
          DefaultStreamStateQDataForNamed<DataForMainView>(
              DataForMainView(true, IPAddress("", "")));
}

@immutable
final class DataForMainViewQThereIsStreamStateViewModel
    extends BaseDataForNamedQThereIsStreamStateViewModel<DataForMainView> {
  DataForMainViewQThereIsStreamStateViewModel(
      super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForMainView?> get getStreamDataForMainView {
    return getStreamDataForNamed;
  }

  DataForMainView? get getDataForMainView {
    return getDataForNamed;
  }

  void notifyStreamDataForMainView() {
    notifyStreamDataForNamed();
  }
}

final class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI =
      IPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForMainViewQThereIsStreamStateViewModel =
      DataForMainViewQThereIsStreamStateViewModel(
          InitializedDefaultStreamStateQDataForMainView());

  @override
  void dispose() {
    _dataForMainViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForMainView?> get getStreamDataForMainView =>
      _dataForMainViewQThereIsStreamStateViewModel.getStreamDataForMainView;
  DataForMainView? get getDataForMainView =>
      _dataForMainViewQThereIsStreamStateViewModel.getDataForMainView;

  Future<String> initForMainView() async {
    final resultForJsonipAPI =
        await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
            .getIPAddressFromHttpClientServiceNPDS();
    if (resultForJsonipAPI.exceptionController
        .isNotEqualsNullParameterException()) {
      return _firstBranchOneQInitForMainViewQGetIPAddressFromHttpClientServiceNPDS(
          resultForJsonipAPI);
    }
    _dataForMainViewQThereIsStreamStateViewModel.getDataForMainView?.isLoading =
        false;
    _dataForMainViewQThereIsStreamStateViewModel.getDataForMainView?.ipAddress =
        resultForJsonipAPI.parameter?.getCloneModel ?? const IPAddress("", "");
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForMainView() {
    _dataForMainViewQThereIsStreamStateViewModel.notifyStreamDataForMainView();
  }

  Future<String>
      _firstBranchOneQInitForMainViewQGetIPAddressFromHttpClientServiceNPDS(
          Result<IPAddress> resultForJsonipAPI) async {
    _dataForMainViewQThereIsStreamStateViewModel.getDataForMainView?.isLoading =
        false;
    _dataForMainViewQThereIsStreamStateViewModel.getDataForMainView
        ?.exceptionController = resultForJsonipAPI.exceptionController;
    return resultForJsonipAPI.exceptionController.getKeyParameterException;
  }
}

final class MainView {
  late final MainViewListViewModel _mainViewListViewModel;

  void initState() {
    _mainViewListViewModel = MainViewListViewModel();
    _init();
  }

  void dispose() {
    _mainViewListViewModel.dispose();
  }

  void build() {
    final dataForMainView = _mainViewListViewModel.getDataForMainView;
    switch (dataForMainView?.getEnumDataForMain) {
      case EnumDataForMainView.isLoading:
        debugPrint("Build: IsLoading");
        break;
      case EnumDataForMainView.exception:
        debugPrint(
            "Build: Exception(${dataForMainView?.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForMainView.success:
        debugPrint("Build: Success(${dataForMainView?.ipAddress})");
        break;
      default:
        break;
    }
  }

  Future<void> _init() async {
    _mainViewListViewModel.getStreamDataForMainView.listen((event) {
      build();
    });
    final result = await _mainViewListViewModel.initForMainView();
    debugPrint("MainView: $result");
    _mainViewListViewModel.notifyStreamDataForMainView();
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
  // Build: Success(ip: 95.132.171.1, country: UA)
  //
  // Process finished with exit code 0
}
