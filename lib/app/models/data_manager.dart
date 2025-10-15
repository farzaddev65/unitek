import 'package:bestdroid/app/models/location_setting/location_settings.dart';
import 'package:bestdroid/app/models/location_setting/tb_location_setting.dart';
import 'package:bestdroid/app/models/model_device/device.dart';
import 'package:bestdroid/app/models/model_device/tb_model_devise.dart';
import 'package:bestdroid/app/models/output/output.dart';
import 'package:bestdroid/app/models/output/tb_output.dart';
import 'package:bestdroid/app/view/utils/local_storage.dart';

class DataManager {
  /// ****************************** TBS ********************************************
  static const String _tbLocationSetting = 'locationSetting';
  static const String _tbDeviceModel = 'modelDevice';
  static const String _tbOutputModel = 'output';

  /// ****************************** HOME ********************************************
  static const String on = "on";
  static const String off = "off";
  static String onP1 = "onP1";
  static String offP1 = "OffP1";
  static String onP2 = "OnP2";
  static String offP2 = "OffP2";
  static const String partSet = "partSet";
  static const String simCardInquiry = "simCardInquiry";
  static const String deviceReport = "deviceReport";
  static const String stopDialing = "stopDialing";
  static const String adminPassword = 'adminPassword';

  /// ****************************** OTHER SETTING CONTROLLER ********************************************
  static const String setZoneSetting = 'setZoneSetting';
  static const String insertToMemory = 'insertToMemory';
  static const String deleteFromMemory = 'deleteFromMemory';
  static const String showMemory = 'showMemory';
  static const String callPriority = 'callPriority';
  static const String setVolumeSingleAlarm = 'setVolumeSingleAlarm';
  static const String setVolumeMainAlarm = 'setVolumeMainAlarm';
  static const String deleteRemoteNumber = 'deleteRemoteNumber';
  static const String changeTheBurglarAlarmPassword = 'changeTheBurglarAlarmPassword';
  static const String changeTheMenuPassword = 'changeTheMenuPassword';
  static const String password = 'password';
  static const String changeZoneName = 'changeZoneName';

  /// ****************************** OTHER SETTING PAGE 2 ********************************************
  static const String alarmSilentExternalSpeaker = 'alarmSilentExternalSpeaker';
  static const String alarmOnOffPower = 'alarmOnOffPower';
  static const String alarmOnOffConfidental = 'alarmOnOffConfidental';
  static const String alarmOnOffSmsReceivingReport = 'alarmOnOffSmsReceivingReport';
  static const String selectSimType = 'selectSimType';
  static const String auxReport = 'auxReport';

  /// ****************************** OTHER SETTING PAGE 3 ********************************************
  static const String setupStimulationType = 'setupStimulationType';
  static const String setupLanguageSMS = 'setupLanguageSMS';
  static const String defaultDialingSystem = 'defaultDialingSystem';
  static const String remoteControl = 'remoteControl';
  static const String setAlarmTime = 'setAlarmTime';
  static const String singleSirenSetting = 'singleSirenSetting';
  static const String adjustTheTypeOfDingDong = 'adjustTheTypeOfDingDong';
  static const String setArrivalTime = 'setArrivalTime';
  static const String outputControl2WithMuteButton = 'outputControl2WithMuteButton';

  /// ****************************** OTHER SETTING PAGE 4 ********************************************
  static const String remoteSilentButtonFunction = 'remoteSilentButtonFunction';
  static const String contactTheManagerThroughAFixedLine = 'contactTheManagerThroughAFixedLine';
  static const String fixedLineDialingType = 'fixedLineDialingType';
  static const String deviceShutdownReport = 'deviceShutdownReport';
  static const String turnTheDialerOnAndOff = 'turnTheDialerOnAndOff';
  static const String twoStageShutdownOfTheDevice = 'twoStageShutdownOfTheDevice';
  static const String remoteControlByContact = 'remoteControlByContact';
  static const String reportAPowerOutageByCalling = 'reportAPowerOutageByCalling';
  static const String sendIncomingCallNumber = 'sendIncomingCallNumber';

  /// ****************************** OUTPUT CONTROLLER ********************************************
  static const String output = 'output';

  /// ****************************** SPLASH ********************************************
  static const String biometricEnable = 'biometricEnable';

  /// ****************************** DATAMANAGER ********************************************
  static const String chargeCode = 'chargeCode';

  //
  //
  //
  //
  // static const String chargeCode = 'chargeCode';
  // static const String sendIncomingCallNumber = "sendIncomingCallNumber";
  //
  //

  // static const String password = 'password';
  // static const String biometricEnable = 'biometricEnable';
  //
  // static const String output = "output";
  // static const String insertToMemory = "insertToMemory";
  // static const String deleteFromMemory = "deleteFromMemory";
  // static const String showMemory = "showMemory";
  // static const String callPriority = "callPriority";
  // static const String deleteRemoteNumber = "deleteRemoteNumber";
  // static const String defaultDialingSystem = "defaultDialingSystem";
  // static const String singleSirenSetting = "singleSirenSetting";
  // static const String setZoneSetting = "setZoneSetting";
  // static const String setVolumeMainAlarm = "setVolumeMainAlarm";
  // static const String setVolumeSingleAlarm = "setVolumeSingleAlarm";
  // static const String changeZoneName = "changeZoneName";
  // static const String auxReport = "auxReport";
  // static const String turnTheDialerOnAndOff = "turnTheDialerOnAndOff";
  // static const String deviceShutdownReport = "deviceShutdownReport";
  // static const String remoteControlByContact = "remoteControlByContact";
  // static const String twoStageShutdownOfTheDevice = "twoStageShutdownOfTheDevice";
  // static const String outputDorOpen = "outputDorOpen";
  // static const String contactTheManagerThroughAFixedLine = "contactTheManagerThroughAFixedLine";
  // static const String offReportByDial = "offReportByDial";
  // static const String outputControlBySilent = "outputControlBySilent";
  // static const String changeTheMenuPassword = "changeTheMenuPassword";
  // static const String changeTheBurglarAlarmPassword = "changeTheBurglarAlarmPassword";
  // static const String fixedLineDialingType = "fixedLineDialingType";
  // static const String reportAPowerOutageByCalling = "reportAPowerOutageByCalling";
  // //***********************************************//
  // static const String changePasswordCentral = "changePasswordCentral";
  // //***********************************************//
  // static const String alarmSilentExternalSpeaker = "alarmSilentExternalSpeaker";
  // static const String alarmOnOffPower = "alarmOnOffPower";
  // static const String alarmOnOffConfidental = "alarmOnOffConfidental";
  // static const String alarmOnOffSmsReceivingReport = "alarmOnOffSmsReceivingReport";
  // static const String setupStimulationType = "setupStimulationType";
  // static const String setupLanguageSMS = "setupLanguageSMS";
  // static const String remoteControl = "remoteControl";
  // static const String setAlarmTime = "setAlarmTime";
  // static const String adjustTheTypeOfDingDong = "adjustTheTypeOfDingDong";
  // static const String selectSimType = "selectSimType";
  // static const String setArrivalTime = "setArrivalTime";
  // static const String remoteSilentButtonFunction = "remoteSilentButtonFunction";
  // static const String changePasswordCentral = "changePasswordCentral";
  // static const String chargeCode = "chargeCode";
  // static const String changePassword = "changePassword";
  // static const String onRemember = "onRemember";
  // static const String offSystem2step = "offSystem2step";
  // static const String remoteControlCid = "remoteControlCid";
  // static const String callAdminByPhone = "callAdminByPhone";
  // static const String offReportByDial = "offReportByDial";
  // static const String silentFunction = "silentFunction";
  // static const String outputDorOpen = "outputDorOpen";
  // static const String outputControlBySilent = "outputControlBySilent";
  // static const String sendNumberInputDial = "sendNumberInputDial";
  // static const String kindOfCall = "kindOfCall";
  // static const String emergency = "emergency";
  // static const String alarmOnOffSimCardSharg = "alarmOnOffSimCardSharg";
  // static const String alarmOnOffSimCardSharg2 = "alarmOnOffSimCardSharg2";
  // static const String zone24H = "Zone24H";
  // static const String outputAdjustment1 = "outputAdjustment1";
  // static const String setDepartureTime = "setDepartureTime";
  // static const String changeRemoteName = "changeRemoteName";

  /// ************************************ GET TB ***********************************************

  static Future<TbLocationSettingModel> getTbLocationSettingModel() async {
    var tt = await getData(_tbLocationSetting);
    TbLocationSettingModel tb = TbLocationSettingModel();
    if (tt != null) {
      tb = TbLocationSettingModel.fromMap(tt);
    }
    return tb;
  }

  static Future<TbOutputModel> getTbOutputModel() async {
    var tt = await getData(_tbOutputModel);
    TbOutputModel tb = TbOutputModel();
    if (tt != null) {
      tb = TbOutputModel.fromMap(tt);
    }
    return tb;
  }

  static Future<TbDeviceModel> getTbDeviceModel() async {
    var tt = await getData(_tbDeviceModel);
    TbDeviceModel tb = TbDeviceModel();
    if (tt != null) {
      tb = TbDeviceModel.fromMap(tt);
    }
    return tb;
  }

  /// ************************************ INSERT ***********************************************
  static Future<void> insertLocationSetting(LocationSettingModel model) async {
    TbLocationSettingModel tb = await getTbLocationSettingModel();

    List<LocationSettingModel> list = tb.list ?? <LocationSettingModel>[];
    int lastId = list.length;
    model.id = lastId + 1;
    list.add(model);
    tb.list = list;
    setData(_tbLocationSetting, tb.toMap());
  }

  static Future<void> insertDeviceModel(DeviceModel model) async {
    TbDeviceModel tb = await getTbDeviceModel();

    List<DeviceModel> list = tb.list ?? <DeviceModel>[];
    int lastId = list.length;
    model.id = lastId + 1;
    list.add(model);
    tb.list = list;
    setData(_tbDeviceModel, tb.toMap());
    // debugPrint("DDDD");

    // var ttt =await getData(_tbDeviceModel);
    // TbDeviceModel tbb = TbDeviceModel();
    // if (ttt != null) {
    //   tbb = TbDeviceModel.fromMap(ttt);
    // }
    // debugPrint("DDD");
  }

  static Future<void> insertOutputModel(OutputModel model) async {
    TbOutputModel tb = await getTbOutputModel();
    List<OutputModel> list = tb.list ?? <OutputModel>[];
    int lastId = list.length;
    model.id = lastId + 1;
    list.add(model);
    tb.list = list;
    setData(_tbOutputModel, tb.toMap());
  }

  /// ************************************* LIST ***********************************************
  static Future<List<LocationSettingModel>> getLocationSettingModelList() async {
    TbLocationSettingModel tb = await getTbLocationSettingModel();

    List<LocationSettingModel> list = tb.list ?? <LocationSettingModel>[];
    return list;
  }

  static Future<List<DeviceModel>> getDeviceModelList() async {
    var tt = await getData(_tbDeviceModel);
    TbDeviceModel tb = TbDeviceModel();
    if (tt != null) {
      tb = TbDeviceModel.fromMap(tt);
    }
    List<DeviceModel> list = tb.list ?? <DeviceModel>[];
    return list;
  }

  static Future<List<OutputModel>> getOutputModelList() async {
    TbOutputModel tb = await getTbOutputModel();

    List<OutputModel> list = tb.list ?? <OutputModel>[];
    return list;
  }

  /// ************************************ OBJECT ***********************************************
  static Future<LocationSettingModel?> getLocationSettingModelById({required int id}) async {
    TbLocationSettingModel tb = await getTbLocationSettingModel();

    List<LocationSettingModel> list = (tb.list ?? <LocationSettingModel>[]).where((element) => element.id == id).toList();

    return list.isNotEmpty ? list.first : null;
  }

  static Future<DeviceModel?> getDeviceModelById({required int id}) async {
    TbDeviceModel tb = await getTbDeviceModel();
    List<DeviceModel> list = (tb.list ?? <DeviceModel>[]).where((element) => element.id == id).toList();

    return list.isNotEmpty ? list.first : null;
  }

  /// ************************************ UPDATE ***********************************************
  static Future<void> updateLocationSetting(LocationSettingModel model) async {
    TbLocationSettingModel tb = await getTbLocationSettingModel();

    List<LocationSettingModel> list = tb.list ?? <LocationSettingModel>[];

    for (int i = 0; i < list.length; i++) {
      if (list[i].id == model.id) {
        list.removeAt(i);
        list.insert(i, model);
      }
    }
    tb.list = list;
    setData(_tbLocationSetting, tb.toMap());
  }

  static Future<void> updateOutputs(OutputModel model) async {
    TbOutputModel tb = await getTbOutputModel();

    List<OutputModel> list = tb.list ?? <OutputModel>[];

    for (int i = 0; i < list.length; i++) {
      if (list[i].id == model.id) {
        list.removeAt(i);
        list.insert(i, model);
      }
    }
    tb.list = list;
    setData(_tbOutputModel, tb.toMap());
  }

  static Future<void> updateSetting(LocationSettingModel model) async {
    TbLocationSettingModel tb = await getTbLocationSettingModel();

    List<LocationSettingModel> list = tb.list ?? <LocationSettingModel>[];

    for (int i = 0; i < list.length; i++) {
      if (list[i].id == model.id) {
        list.removeAt(i);
        list.insert(i, model);
      }
    }
    tb.list = list;
    setData(_tbLocationSetting, tb.toMap());
  }

  static Future<void> resetLocationSettingSelected(int selectModelDevice) async {
    TbLocationSettingModel tb = await getTbLocationSettingModel();

    List<LocationSettingModel> list = tb.list ?? <LocationSettingModel>[];

    for (int i = 0; i < list.length; i++) {
      LocationSettingModel model = list[i];
      if (model.id == selectModelDevice) {
        model.selected = 1;
      } else {
        model.selected = 0;
      }
      list.removeAt(i);
      list.insert(i, model);
    }
    tb.list = list;
    setData(_tbLocationSetting, tb.toMap());
  }

  static Future<void> updateDeviceModel(DeviceModel model) async {
    TbDeviceModel tb = await getTbDeviceModel();

    List<DeviceModel> list = tb.list ?? <DeviceModel>[];

    for (int i = 0; i < list.length; i++) {
      if (list[i].id == model.id) {
        list.removeAt(i);
        list.insert(i, model);
      }
    }
    tb.list = list;
    setData(_tbDeviceModel, tb.toMap());
  }

  /// ************************************ DELETE ***********************************************
  static Future<void> deleteLocationSetting(int id) async {
    TbLocationSettingModel tb = await getTbLocationSettingModel();

    List<LocationSettingModel> list = tb.list ?? <LocationSettingModel>[];
    for (int i = 0; i < list.length; i++) {
      if (list[i].id == id) {
        list.removeAt(i);
      }
    }
    tb.list = list;
    setData(_tbLocationSetting, tb.toMap());
  }

  /// ************************************ PARAM ***********************************************
}
