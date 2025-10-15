import 'package:flutter/material.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/models/data_manager.dart';
import 'package:bestdroid/app/models/other/call_priority_model.dart';
import 'package:bestdroid/app/models/remote/remote.dart';
import 'package:bestdroid/app/models/zone/zone.dart';
import 'package:bestdroid/app/view/utils/local_storage.dart';
import 'package:url_launcher/url_launcher.dart';

mixin OtherSettingController {
  GlobalKey<FormState> profileForm = GlobalKey<FormState>();

  final callPriorityList = <CallPriorityModel>[].obs;
  final List<ZoneModel> zoneList = <ZoneModel>[].obs;
  final selectCallPriority = CallPriorityModel().obs;
  final selectZone = ZoneModel().obs;
  final selectZoneName = ZoneModel().obs;
  final volumeMainAlarm = 0.0.obs;
  final volumeSingleAlarm = 0.0.obs;

  final TextEditingController etMemory = TextEditingController();
  final TextEditingController etPhone = TextEditingController();
  final TextEditingController etRemoteNumber = TextEditingController();
  final TextEditingController etAdminPassword = TextEditingController();
  final TextEditingController etBurglarAlarmPassword = TextEditingController();
  final TextEditingController etMenuPassword = TextEditingController();
  final TextEditingController etAppPassword = TextEditingController();
  final TextEditingController etZoneName = TextEditingController();

  final TextEditingController newPassword = TextEditingController();
  final TextEditingController remote = TextEditingController();
  final TextEditingController zone = TextEditingController();

  final zoneModelList = <ZoneModel>[].obs;
  final remoteModelList = <RemoteModel>[].obs;

  final selectZoneMode = ZoneModel().obs;
  final selectRemoteMode = RemoteModel().obs;

  final alarmSilentExternalSpeaker = 0.obs;
  final alarmOnOffPower = 0.obs;
  final alarmOnOffConfidental = 0.obs;
  final alarmOnOffSimCardSharg = 0.obs;
  final alarmOnOffSimCardSharg2 = 0.obs;
  final ZONE24h = 0.obs;
  final alarmOnOffSmsReceivingReport = 0.obs;
  final operator = 0.obs;

  final setupStimulationType = 0.obs;
  final setupLanguageSMS = 0.obs;
  RxInt defaultDialingSystem = 0.obs;
  final remoteControl = 0.obs;
  final setAlarmTime = 0.obs;
  final setZoneStatus = 0.obs;
  final singleSirenSetting = 0.obs;
  final outputAdjustment1 = 0.obs;
  final adjustTheTypeOfDingDong = 0.obs;
  final setArrivalTime = 0.obs;
  final setDepartureTime = 0.obs;

  setCallPriorityParam() {
    callPriorityList.add(CallPriorityModel(title: "Call", id: 1));
    callPriorityList.add(CallPriorityModel(title: "SMS", id: 2));
    selectCallPriority(callPriorityList[0]);
  }

  setZoneParam() {
    zoneList.add(ZoneModel(title: "شماره زون", id: 0));
    zoneList.add(ZoneModel(title: "زون 1", id: 1));
    zoneList.add(ZoneModel(title: "زون 2", id: 2));
    zoneList.add(ZoneModel(title: "زون 3", id: 3));
    zoneList.add(ZoneModel(title: "زون 4", id: 4));
    zoneList.add(ZoneModel(title: "زون 5", id: 5));
    zoneList.add(ZoneModel(title: "زون 6", id: 6));
    zoneList.add(ZoneModel(title: "زون 7", id: 7));
    zoneList.add(ZoneModel(title: "زون 8", id: 8));
    selectZone(zoneList[0]);
  }

  void setCallPriority(CallPriorityModel _callPriorityModel) {
    selectCallPriority(_callPriorityModel);
  }

  void setVolumeMainAlarm(double _volumeMainAlarm) {
    volumeMainAlarm(_volumeMainAlarm);
  }

  void setVolumeSingleAlarm(double _volumeSingleAlarm) {
    volumeSingleAlarm(_volumeSingleAlarm);
  }

  void setZone(ZoneModel _zoneModel) {
    selectZone(_zoneModel);
  }

  void setAlarmSilentExternalSpeaker(int _alarmSilentExternalSpeaker) {
    this.alarmSilentExternalSpeaker(_alarmSilentExternalSpeaker);
  }

  void setAlarmOnOffPower(int alarmOnOffPower) {
    this.alarmOnOffPower(alarmOnOffPower);
  }

  void setAlarmOnOffConfidental(int _alarmOnOffConfidental) {
    this.alarmOnOffConfidental(_alarmOnOffConfidental);
  }

  void setAlarmOnOffSimCardSharg(int _alarmOnOffSimCardSharg) {
    this.alarmOnOffSimCardSharg(_alarmOnOffSimCardSharg);
  }

  void setAlarmOnOffSimCardSharg2(int _alarmOnOffSimCardSharg) {
    this.alarmOnOffSimCardSharg2(_alarmOnOffSimCardSharg);
  }

  void setZONE24h(int _ZONE24h) {
    this.ZONE24h.value = _ZONE24h;
  }

  void setAlarmOnOffSmsReceivingReport(int _alarmOnOffSmsReceivingReport) {
    this.alarmOnOffSmsReceivingReport(_alarmOnOffSmsReceivingReport);
  }

  void setOperator(int _operator) {
    this.operator.value = _operator;
  }

///////////////////////////////////
  void setSetupStimulationType(int _setupStimulationType) {
    this.setupStimulationType(_setupStimulationType);
  }

  void setSetupLanguageSMS(int _setupLanguageSMS) {
    this.setupLanguageSMS(_setupLanguageSMS);
  }

  void setDefaultDialingSystem(int _defaultDialingSystem) {
    this.defaultDialingSystem(_defaultDialingSystem);
  }

  void setRemoteControl(int _remoteControl) {
    this.remoteControl(_remoteControl);
  }

  void setSetAlarmTime(int _setAlarmTime) {
    this.setAlarmTime(_setAlarmTime);
  }

  void setSetZoneStatus(int _setZoneStatus) {
    this.setZoneStatus(_setZoneStatus);
  }

  void setSingleSirenSetting(int _singleSirenSetting) {
    this.singleSirenSetting(_singleSirenSetting);
  }

  void setOutputAdjustment1(int _outputAdjustment1) {
    this.outputAdjustment1(_outputAdjustment1);
  }

  void setAdjustTheTypeOfDingDong(int _adjustTheTypeOfDingDong) {
    this.adjustTheTypeOfDingDong(_adjustTheTypeOfDingDong);
  }

  void setSetArrivalTime(int _setArrivalTime) {
    this.setArrivalTime(_setArrivalTime);
  }

  void setSetDepartureTime(int _setDepartureTime) {
    this.setDepartureTime(_setDepartureTime);
  }

  // Future<void> sendAlarmSilentExternalSpeaker() async {
  //   String code = await getCode(DataManager.alarmSilentExternalSpeaker);
  //   sendMessage(code.replaceAll("VAL", (alarmSilentExternalSpeaker.value + 1).toString()));
  // }

  // Future<void> sendAlarmOnOffPower() async {
  //   String code = await getCode(DataManager.alarmOnOffPower);
  //   sendMessage(code.replaceAll("VAL", (alarmOnOffPower.value + 1).toString()));
  // }

  // Future<void> sendAlarmOnOffConfidental() async {
  //   String code = await getCode(DataManager.alarmOnOffConfidental);
  //   sendMessage(code.replaceAll("VAL", (alarmOnOffConfidental.value + 1).toString()));
  // }

  // Future<void> sendAlarmOnOffSimCardSharg() async{
  //   String code =await getCode( DataManager.alarmOnOffSimCardSharg ) ;
  //   sendMessage(code.replaceAll("VAL", (alarmOnOffSimCardSharg.value + 1).toString()));
  // }
  //
  // Future<void> sendAlarmOnOffSimCardSharg2()async {
  //   String code =await getCode( DataManager.alarmOnOffSimCardSharg2)  ;
  //   sendMessage(code.replaceAll("VAL", (alarmOnOffSimCardSharg2.value + 1).toString()));
  // }
  //
  // Future<void> sendZONE24h() async{
  //   String code =await getCode( DataManager.zone24H)  ;
  //   sendMessage(code.replaceAll("VAL", (ZONE24h.value + 1).toString()));
  // }

  // Future<void> sendAlarmOnOffSmsReceivingReport() async {
  //   String code = await getCode(DataManager.alarmOnOffSmsReceivingReport);
  //   sendMessage(code.replaceAll("VAL", (alarmOnOffSmsReceivingReport.value + 1).toString()));
  // }

//   Future<void> sendSelectOperator() async {
//     String code = await getCode(DataManager.selectSimType);
//     sendMessage(code.replaceAll("VAL", (operator.value + 1).toString()));
//   }
//
// ////////
//   Future<void> sendSetupStimulationType() async {
//     String code = await getCode(DataManager.setupStimulationType);
//     sendMessage(code.replaceAll("VAL", (setupStimulationType.value + 1).toString()));
//   }
//
//   Future<void> sendSetupLanguageSMS() async {
//     String code = await getCode(DataManager.setupLanguageSMS);
//     sendMessage(code.replaceAll("VAL", (setupLanguageSMS.value + 1).toString()));
//   }
//
//   Future<void> sendDefaultDialingSystem() async {
//     String code = await getCode(DataManager.defaultDialingSystem);
//     sendMessage(code.replaceAll("VAL", (defaultDialingSystem.value + 1).toString()));
//   }
//
//   Future<void> sendRemoteControl() async {
//     String code = await getCode(DataManager.remoteControl);
//     sendMessage(code.replaceAll("VAL", (remoteControl.value + 1).toString()));
//   }
//
//   Future<void> sendSetAlarmTime() async {
//     String code = await getCode(DataManager.setAlarmTime);
//     sendMessage(code.replaceAll("VAL", (setAlarmTime.value + 1).toString()));
//   }

  Future<void> sendSetZone() async {
    if ((selectZone.value.id) > 0) {
      String code = await getCode(DataManager.setZoneSetting);
      sendMessage(code.replaceAll("X", (selectZone.value.id).toString()).replaceAll("Y", (setZoneStatus.value + 1).toString()));
    } else {
      snackbarRed(title: s.error, subtitle: s.selectYourZoneNumber);
    }
  }




  //
  // Future<void> sendSingleSirenSetting() async {
  //   String code = await getCode(DataManager.singleSirenSetting);
  //   sendMessage(code.replaceAll("VAL", (singleSirenSetting.value + 1).toString()));
  // }

  // Future<void> sendOutputAdjustment1()async {
  //   String code =await getCode(DataManager.outputAdjustment1 )  ;
  //   sendMessage(code.replaceAll("VAL", (outputAdjustment1.value + 1).toString()));
  // }
  //
  // Future<void> sendAdjustTheTypeOfDingDong() async {
  //   String code = await getCode(DataManager.adjustTheTypeOfDingDong);
  //   sendMessage(code.replaceAll("VAL", (adjustTheTypeOfDingDong.value + 1).toString()));
  // }
  //
  // Future<void> sendSetArrivalTime() async {
  //   String code = await getCode(DataManager.setArrivalTime);
  //   sendMessage(code.replaceAll("VAL", (setArrivalTime.value + 1).toString()));
  // }

  //
  // Future<void> sendSetDepartureTime() async{
  //   String code =await getCode(DataManager.setDepartureTime )  ;
  //   sendMessage(code.replaceAll("VAL", (setDepartureTime.value + 1).toString()));
  // }

  Future<void> insertToMemory() async {
    if (etMemory.text.length > 0) {
      if (etPhone.text.length == 11) {
        String code = await getCode(DataManager.insertToMemory);
        sendMessage(code.replaceAll("MEMORY", etMemory.text).replaceAll("PHONE", etPhone.text));
      } else {
        snackbarRed(title: s.error, subtitle: "Phone is wrong");
      }
    } else {
      snackbarRed(title: s.error, subtitle: s.enterTheMemory);
    }
  }

  Future<void> deleteFromMemory() async {
    if (etMemory.text.length > 0) {
      String code = await getCode(DataManager.deleteFromMemory);
      sendMessage(await code.replaceAll("MEMORY", etMemory.text));
    } else {
      snackbarRed(title: s.error, subtitle: s.enterTheMemory);
    }
  }

  Future<void> showMemory() async {
    if (etMemory.text.length > 0) {
      String code = await getCode(DataManager.showMemory);
      sendMessage(code.replaceAll("MEMORY", etMemory.text));
    } else {
      snackbarRed(title: s.error, subtitle: s.enterTheMemory);
    }
  }

  Future<void> sedCallPriority() async {
    String code = await getCode(DataManager.callPriority);
    sendMessage(code.replaceAll("VAL", selectCallPriority.value.id.toString()));
  }

  // Future<void> sendVolumeMainAlarm() async{
  //   String code =await getCode(  DataManager.setVolumeMainAlarm) ;
  //   sendMessage(code.replaceAll("VAL", (volumeMainAlarm.value.toInt()).toString()));
  // }

  Future<void> sendVolumeSingleAlarm() async {
    String code = await getCode(DataManager.setVolumeSingleAlarm);
    sendMessage(code.replaceAll("VAL", (volumeSingleAlarm.value.toInt()).toString()));
  }

  Future<void> sendVolumeMainAlarm() async {
    String code = await getCode(DataManager.setVolumeMainAlarm);
    sendMessage(code.replaceAll("VAL", (volumeMainAlarm.value.toInt()).toString()));
  }

  Future<void> deleteRemote() async {
    if (etRemoteNumber.text.length > 0) {
      String code = await getCode(DataManager.deleteRemoteNumber);
      sendMessage(code.replaceAll("VAL", (etRemoteNumber.text).toString()));
    } else {
      snackbarRed(title: s.error, subtitle: "Enter the remote number");
    }
  }

  void changeAdminPassword(BuildContext context) {
    if (etAdminPassword.text.length > 3) {
      setData(DataManager.adminPassword, etAdminPassword.text);
      snackbarRed(title: 's.error', subtitle: s.passwordChangedSuccessfully);

      back();
    } else {
      snackbarRed(title: s.error, subtitle: s.thePasswordMustBeAtLeast3Characters);
    }
  }

  void changeMenuPassword(BuildContext context) {
    if (etMenuPassword.text.length > 3) {
      String _code = getCode(DataManager.changeTheMenuPassword);
      sendMessage(_code.replaceAll("NEWPASS", (etMenuPassword.text.toString())));

    } else {
      snackbarRed(title: s.error, subtitle: s.thePasswordMustBeAtLeast3Characters);
    }
  }

  void changeTheBurglarAlarmPassword(BuildContext context) {
    if (etBurglarAlarmPassword.text.length > 3) {
      String _code = getCode(DataManager.changeTheBurglarAlarmPassword);
      sendMessage(_code.replaceAll("NEWPASS", (etBurglarAlarmPassword.text.toString())));

    } else {
      snackbarRed(title: s.error, subtitle: s.thePasswordMustBeAtLeast3Characters);
    }
  }

  void changeAppPassword(BuildContext context) {
    if (etAppPassword.text.length > 3) {
      setData(DataManager.password, etAppPassword.text);
      snackbarRed(title: s.error, subtitle: s.passwordChangedSuccessfully);

      back();
    } else {
      snackbarRed(title: s.error, subtitle: s.thePasswordMustBeAtLeast3Characters);
    }
  }

  void setSelectZoneModel(ZoneModel _zoneModel) {
    selectZoneMode(_zoneModel);
  }

  // void setSelectRemoteModel(RemoteModel _remoteModel) {
  //   selectRemoteMode(_remoteModel);
  // }

  void setRemoteZoneName() {
    remoteModelList.add(RemoteModel(id: 1, title: '${s.remote} 1'));
    remoteModelList.add(RemoteModel(id: 2, title: '${s.remote} 2'));
    remoteModelList.add(RemoteModel(id: 3, title: '${s.remote} 3'));
    remoteModelList.add(RemoteModel(id: 4, title: '${s.remote} 4'));
    remoteModelList.add(RemoteModel(id: 5, title: '${s.remote} 5'));
    remoteModelList.add(RemoteModel(id: 6, title: '${s.remote} 6'));
    remoteModelList.add(RemoteModel(id: 7, title: '${s.remote} 7'));
    remoteModelList.add(RemoteModel(id: 8, title: '${s.remote} 8'));
    remoteModelList.add(RemoteModel(id: 9, title: '${s.remote} 9'));

    zoneModelList.add(ZoneModel(id: 1, title: '${s.zoon} 1'));
    zoneModelList.add(ZoneModel(id: 2, title: '${s.zoon} 2'));
    zoneModelList.add(ZoneModel(id: 3, title: '${s.zoon} 3'));
    zoneModelList.add(ZoneModel(id: 4, title: '${s.zoon} 4'));
    zoneModelList.add(ZoneModel(id: 5, title: '${s.zoon} 5'));
    zoneModelList.add(ZoneModel(id: 6, title: '${s.zoon} 6'));
    zoneModelList.add(ZoneModel(id: 7, title: '${s.zoon} 7'));
    zoneModelList.add(ZoneModel(id: 8, title: '${s.zoon} 8'));
    zoneModelList.add(ZoneModel(id: 9, title: '${s.zoon} 9'));
    selectZoneMode(zoneModelList[0]);
    selectRemoteMode(remoteModelList[0]);
  }

  // changeRemoteName() async {
  //   if (Core.selectLocationSettingModel.value.id != null) {
  //     if (remote.text.length < 2) {
  //       snackbarRed(title: s.error, subtitle: s.enterRemoteName);
  //     } else {
  //       String code =await getCode( DataManager.changeRemoteName )  ;
  //       sendMessage(code.replaceAll("NUMBER", selectRemoteMode.value.id.toString()).replaceAll("PARAM", remote.text));
  //     }
  //   } else {
  //     snackbarRed(title: s.error, subtitle: s.selectedInstallationLocation);
  //   }
  // }

  // Future<void> changePassword() async {
  //   if (Core.selectLocationSettingModel.value.id != null) {
  //     if (newPassword.text.length < 2) {
  //       snackbarRed(title: s.error, subtitle: s.enterPassword);
  //     } else {
  //       String code = await getCode( DataManager.changePassword ) ;
  //       sendMessage(code.replaceAll("NEWPASS", newPassword.text));
  //     }
  //   } else {
  //     snackbarRed(title: s.error, subtitle: s.selectedInstallationLocation);
  //   }
  // }

  Future<void> changeZoneName() async {
    if (Core.selectLocationSettingModel.value.id != null) {
      if (zone.text.length < 2) {
        snackbarRed(title: s.error, subtitle: s.enterZoneName);
      } else {
        String code = await getCode(DataManager.changeZoneName);
        sendMessage(code.replaceAll("NUMBER", selectZoneMode.value.id.toString()).replaceAll("PARAM", zone.text));
      }
    } else {
      snackbarRed(title: s.error, subtitle: s.selectedInstallationLocation);
    }
  }

  void launchURL(String url) async => await launchUrl(Uri.parse(url));
}
