import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/models/data_manager.dart';
import 'package:bestdroid/app/models/model_device/device.dart';
import 'package:bestdroid/app/models/output/output.dart';
import 'package:bestdroid/app/view/home/home_page.dart';
import 'package:bestdroid/app/view/utils/local_storage.dart';
import 'package:local_auth/local_auth.dart';
// import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

mixin SplashController {
  TextEditingController passwordController = TextEditingController();

  LocalAuthentication auth = LocalAuthentication();
  RxBool canCheckBiometric = false.obs;

  RxList<BiometricType> availableBiometric = <BiometricType>[].obs;
  RxString autherized = "Not autherized".obs;

  Future<void> insertDeviceModel() async {
    // Core.deviceModelList=<DeviceModel>[
    //   DeviceModel(id: 1, model: Core.model1, selected: 1, hasMultiPart: 0, hasWifi: 0),
    //   DeviceModel(id: 2, model: Core.model2, selected: 0, hasMultiPart: 0, hasWifi: 0),
    //   DeviceModel(id: 3, model: Core.model3, selected: 0, hasMultiPart: 0, hasWifi: 0),
    //
    // ];
    List<DeviceModel> list = await DataManager.getDeviceModelList();
    if (list.isEmpty) {
      // await DataManager.insertDeviceModel(DeviceModel(id: 1, model: Core.model1, selected: 1, countMultiPart: 0, hasWifi: 0));
      // await DataManager.insertDeviceModel(DeviceModel(id: 2, model: Core.model2, selected: 0, countMultiPart: 2, hasWifi: 0));
      await DataManager.insertDeviceModel(DeviceModel(id: 3, model: Core.model3, selected: 0, countMultiPart: 6, hasWifi: 0));
      await DataManager.insertDeviceModel(DeviceModel(id: 4, model: Core.model4, selected: 0, countMultiPart: 8, hasWifi: 0));
    }
    list = await DataManager.getDeviceModelList();
    Core.deviceModelList=list;
  }

  Future<void> getDeviseModelList({required final VoidCallback action}) async {
    Core.deviceModelList = await DataManager.getDeviceModelList();
    action();
  }

  Future<void> getVersion({required final VoidCallback action}) async {
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();
    // Core.versionNumber = packageInfo.version;
    action();
  }

  Future<void> insertOutputModel() async {
    List list = await DataManager.getOutputModelList();
    if (list.isEmpty) {
      await DataManager.insertOutputModel(OutputModel(
        id: 1,
        title: "${s.output} 1",
        code: 1,
        status: 0,
      ));
      await DataManager.insertOutputModel(OutputModel(
        id: 2,
        title: "${s.output} 2",
        code: 2,
        status: 0,
      ));
      await DataManager.insertOutputModel(OutputModel(
        id: 3,
        title: "${s.output} 3",
        code: 3,
        status: 0,
      ));
      await DataManager.insertOutputModel(OutputModel(
        id: 4,
        title: "${s.output} 4",
        code: 4,
        status: 0,
      ));
      await DataManager.insertOutputModel(OutputModel(
        id: 5,
        title: "${s.output} 5",
        code: 5,
        status: 0,
      ));
    }
  }

  Future<void> login() async {
    if (isWeb || isIos) {
      if (passwordController.text == (getString(DataManager.password) ?? '1111')) {
        push(const HomePage());
      } else {
        snackbarRed(title: s.error, subtitle: s.wrongPassword);
      }
    } else {
      if (await requestPermission(Permission.sms)) {
        if (passwordController.text == (getString(DataManager.password) ?? '1111')) {
          push(const HomePage());
        } else {
          snackbarRed(title: s.error, subtitle: s.wrongPassword);
        }
      }
    }
  }

  Future<void> checkParam() async {
    if (getBool(DataManager.biometricEnable) ?? false) {
      await checkBiometric();
      await getAvailableBiometrics();
      authenticate();
    }
  }

  Future<void> checkBiometric() async {
    bool _canCheckBiometric = false;
    try {
      _canCheckBiometric = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
    canCheckBiometric(_canCheckBiometric);
  }

  Future<void> getAvailableBiometrics() async {
    List<BiometricType> _availableBiometric = [];
    try {
      _availableBiometric = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }

    availableBiometric(_availableBiometric);
  }

  Future<void> authenticate() async {
    bool _authenticated = false;
    try {
      _authenticated = await auth.authenticate(
          localizedReason: s.scanYourFingerForAuthentication, options: const AuthenticationOptions(biometricOnly: true));
      debugPrint("DDDDDD");
      // _authenticated = await auth.authenticate(
      //     localizedReason: "برای احراز هویت انگشت خود را اسکن کنید",
      //     na: AndroidAuthMessages(
      //       cancelButton: 'انصراف',
      //       fingerprintHint: '',
      //       signInTitle: 'اسکن اثر انگشت',
      //       fingerprintSuccess: 'fingerprintSuccess',
      //       fingerprintNotRecognized: 'fingerprintNotRecoسیبیبیgnized',
      //       fingerprintRequiredTitle: 'fingerprintRequiredTitle',
      //       goToSettingsButton: 'goToSettingsButton',
      //       goToSettingsDescription: 'goToSettingsDescription',
      //     ),
      //     useErrorDialogs: true,
      //     stickyAuth: false);
    } on PlatformException catch (e) {
      print(e);
    }

    autherized.value = _authenticated ? "Autherized success" : "Failed to authenticate";
    autherized.value == "Autherized success" ? push(HomePage()) : null;
  }
}
