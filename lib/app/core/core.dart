import 'package:bestdroid/app/extensions/extension.dart';
import 'package:bestdroid/app/models/model_device/device.dart';
import 'package:flutter/cupertino.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/models/code_list/code.dart';
import 'package:bestdroid/app/models/code_list/tb_code_list.dart';
import 'package:bestdroid/app/models/data_manager.dart';
import 'package:bestdroid/app/models/location_setting/location_settings.dart';
import 'package:bestdroid/app/view/utils/local_storage.dart';
import 'package:bestdroid/app/widgets/widgets.dart';
import 'package:bestdroid/generated/l10n.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sms_sender/sms_sender.dart';
export 'package:flutter/material.dart';

export 'package:get/get_utils/src/extensions/context_extensions.dart';
export 'package:bestdroid/app/core/core.dart';
export 'package:bestdroid/app/core/get.dart';
export 'package:get/get.dart';

part 'constants.dart';

part 'utils.dart';

part 'theme.dart';

part 'futures.dart';

class Core {
  static Color baseColor = const Color(0xfff5f5f5);
  static String defaultLocal = 'fa';
  static List<DeviceModel> deviceModelList = <DeviceModel>[];
  static String versionNumber = '5.2.0';
  // static String model1 = 'S.G.S';
  // static String model2 = 'S.G.S+';
  static String model3 = 'Unitek-G6';
  static String model4 = 'Unitek-G8';
  static TbCodeModel tbCodeModel = TbCodeModel(
    title: '',
    id: 1,
    list: [
      // HOME
      CodeModel(
        id: 1,
        title: DataManager.on,
        model1: '*PASS*61#',
        model2: '*PASS*61#',
        model3: '*PASS*61#',
        model4: '*PASS*61#',
      ),
      CodeModel(
        id: 2,
        title: DataManager.off,
        model1: '*PASS*60#',
        model2: '*PASS*60#',
        model3: '*PASS*60#',
        model4: '*PASS*60#',
      ),

      CodeModel(
        id: 4,
        title: DataManager.simCardInquiry,
        model1: '*PASS*70#',
        model2: '*PASS*25#',
        model3: '*PASS*25#',
        model4: '*PASS*25#',
      ),
      CodeModel(
        id: 5,
        title: DataManager.stopDialing,
        model1: '*PASS*52#',
        model2: '*PASS*68#',
        model3: '*PASS*68#',
        model4: '*PASS*68#',
      ),
      CodeModel(
        id: 6,
        title: DataManager.deviceReport,
        model1: '*PASS*72#',
        model2: '*PASS*67#',
        model3: '*PASS*67#',
        model4: '*PASS*67#',
      ),
      CodeModel(
        id: 8,
        title: DataManager.output,
        model1: '*PASS*IDSTATUS#',
        model2: '*PASS*58#IDSTATUS#',
        model3: '*PASS*58#IDSTATUS#',
        model4: '*PASS*58#IDSTATUS#',
      ),
      CodeModel(
        id: 8,
        title: DataManager.chargeCode,
        model1: '*PASS*23#SHARGE#',
        model2: '*PASS*23#SHARGE#',
        model3: '*PASS*23#SHARGE#',
        model4: '*PASS*23#SHARGE#',
      ),
      CodeModel(
        id: 3,
        title: DataManager.partSet,
        model1: '-',
        model2: '*PASS*62#',
        model3: '*PASS*62#',
        model4: '*PASS*62#',
      ),
      CodeModel(
        id: 33,
        title: DataManager.onP1,
        model1: '*PASS*62#',
        model2: '*PASS*63#',
        model3: '*PASS*63#',
        model4: '*PASS*63#',
      ),
      CodeModel(
        id: 34,
        title: DataManager.offP1,
        model1: '*PASS*63#',
        model2: '*PASS*64#',
        model3: '*PASS*64#',
        model4: '*PASS*64#',
      ),
      CodeModel(
        id: 35,
        title: DataManager.onP2,
        model1: '*PASS*64#',
        model2: '*PASS*65#',
        model3: '*PASS*65#',
        model4: '*PASS*65#',
      ),
      CodeModel(
        id: 36,
        title: DataManager.offP2,
        model1: '*PASS*65#',
        model2: '*PASS*66#',
        model3: '*PASS*66#',
        model4: '*PASS*66#',
      ),
      // OTHER SETTING

      CodeModel(
        id: 9,
        title: DataManager.insertToMemory,
        model1: '-',
        model2: '*PASS*MEMORY#PHONE#',
        model3: '*PASS*MEMORY#PHONE#',
        model4: '*PASS*MEMORY#PHONE#',
      ),
      CodeModel(
        id: 10,
        title: DataManager.deleteFromMemory,
        model1: '-',
        model2: '*PASS*MEMORY##',
        model3: '*PASS*MEMORY##',
        model4: '*PASS*MEMORY##',
      ),
      CodeModel(
        id: 11,
        title: DataManager.showMemory,
        model1: '-',
        model2: '*PASS*MEMORY#',
        model3: '*PASS*MEMORY#',
        model4: '*PASS*MEMORY#',
      ),

      CodeModel(
        id: 12,
        title: DataManager.callPriority,
        model1: '-',
        model2: '*PASS*32#VAL#',
        model3: '*PASS*32#VAL#',
        model4: '*PASS*32#VAL#',
      ),
      CodeModel(
        id: 13,
        title: DataManager.deleteRemoteNumber,
        model1: '-',
        model2: '*PASS*57#VAL#',
        model3: '*PASS*57#VAL#',
        model4: '*PASS*57#VAL#',
      ),
      CodeModel(
        id: 14,
        title: DataManager.alarmSilentExternalSpeaker,
        model1: '-',
        model2: '*PASS*46#VAL#',
        model3: '*PASS*46#VAL#',
        model4: '*PASS*46#VAL#',
      ),
      CodeModel(
        id: 15,
        title: DataManager.alarmOnOffPower,
        model1: '-',
        model2: '*PASS*47#VAL#',
        model3: '*PASS*47#VAL#',
        model4: '*PASS*47#VAL#',
      ),
      CodeModel(
        id: 16,
        title: DataManager.alarmOnOffConfidental,
        model1: '-',
        model2: '*PASS*38#VAL#',
        model3: '*PASS*38#VAL#',
        model4: '*PASS*38#VAL#',
      ),
      CodeModel(
        id: 18,
        title: DataManager.alarmOnOffSmsReceivingReport,
        model1: '-',
        model2: '*PASS*37#VAL#',
        model3: '*PASS*37#VAL#',
        model4: '*PASS*37#VAL#',
      ),
      CodeModel(
        id: 19,
        title: DataManager.setupStimulationType,
        model1: '-',
        model2: '*PASS*31#VAL#',
        model3: '*PASS*31#VAL#',
        model4: '*PASS*31#VAL#',
      ),
      CodeModel(
        id: 20,
        title: DataManager.setupLanguageSMS,
        model1: '-',
        model2: '*PASS*34#VAL#',
        model3: '*PASS*34#VAL#',
        model4: '*PASS*34#VAL#',
      ),
      CodeModel(
        id: 21,
        title: DataManager.defaultDialingSystem,
        model1: '-',
        model2: '*PASS*33#VAL#',
        model3: '*PASS*33#VAL#',
        model4: '*PASS*33#VAL#',
      ),
      CodeModel(
        id: 22,
        title: DataManager.remoteControl,
        model1: '-',
        model2: '*PASS*40#VAL#',
        model3: '*PASS*40#VAL#',
        model4: '*PASS*40#VAL#',
      ),
      CodeModel(
        id: 23,
        title: DataManager.setAlarmTime,
        model1: '-',
        model2: '*PASS*43#VAL#',
        model3: '*PASS*43#VAL#',
        model4: '*PASS*43#VAL#',
      ),
      CodeModel(
        id: 24,
        title: DataManager.singleSirenSetting,
        model1: '-',
        model2: '*PASS*44#VAL#',
        model3: '*PASS*44#VAL#',
        model4: '*PASS*44#VAL#',
      ),
      CodeModel(
        id: 25,
        title: DataManager.adjustTheTypeOfDingDong,
        model1: '-',
        model2: '*PASS*50#VAL#',
        model3: '*PASS*50#VAL#',
        model4: '*PASS*50#VAL#',
      ),
      CodeModel(
        id: 25,
        title: DataManager.outputControl2WithMuteButton,
        model1: '-',
        model2: '*PASS*52#VAL#',
        model3: '*PASS*52#VAL#',
        model4: '*PASS*52#VAL#',
      ),

      CodeModel(
        id: 26,
        title: DataManager.setArrivalTime,
        model1: '-',
        model2: '*PASS*45#VAL#',
        model3: '*PASS*45#VAL#',
        model4: '*PASS*45#VAL#',
      ),
      CodeModel(
        id: 27,
        title: DataManager.setZoneSetting,
        model1: '-',
        model2: '*PASS*59#XY#',
        model3: '*PASS*59#XY#',
        model4: '*PASS*59#XY#',
      ),
      CodeModel(
        id: 28,
        title: DataManager.setVolumeMainAlarm,
        model1: '-',
        model2: '*PASS*30#1VAL#',
        model3: '*PASS*30#1VAL#',
        model4: '*PASS*30#1VAL#',
      ),
      CodeModel(
        id: 29,
        title: DataManager.setVolumeSingleAlarm,
        model1: '-',
        model2: '*PASS*30#2VAL#',
        model3: '*PASS*30#2VAL#',
        model4: '*PASS*30#2VAL#',
      ),
      CodeModel(
        id: 30,
        title: DataManager.changeZoneName,
        model1: '*PASS*7NUMBER#PARAM#',
        model2: '*PASS*7NUMBER#PARAM#',
        model3: '*PASS*7NUMBER#PARAM#',
        model4: '*PASS*7NUMBER#PARAM#',
      ),
      CodeModel(
        id: 31,
        title: DataManager.selectSimType,
        model1: '-',
        model2: '*PASS*36#VAL#',
        model3: '*PASS*36#VAL#',
        model4: '*PASS*36#VAL#',
      ),
      CodeModel(
        id: 48,
        title: DataManager.auxReport,
        model1: '-',
        model2: '*PASS*56#VAL#',
        model3: '*PASS*56#VAL#',
        model4: '*PASS*56#VAL#',
      ),
      CodeModel(
        id: 38,
        title: DataManager.turnTheDialerOnAndOff,
        model1: '-',
        model2: '*PASS*42#VAL#',
        model3: '*PASS*42#VAL#',
        model4: '*PASS*42#VAL#',
      ),
      CodeModel(
        id: 37,
        title: DataManager.deviceShutdownReport,
        model1: '-',
        model2: '*PASS*41#VAL#',
        model3: '*PASS*41#VAL#',
        model4: '*PASS*41#VAL#',
      ),
      CodeModel(
        id: 40,
        title: DataManager.remoteControlByContact,
        model1: '-',
        model2: '*PASS*54#VAL#',
        model3: '*PASS*54#VAL#',
        model4: '*PASS*54#VAL#',
      ),
      CodeModel(
        id: 39,
        title: DataManager.twoStageShutdownOfTheDevice,
        model1: '-',
        model2: '*PASS*53#VAL#',
        model3: '*PASS*53#VAL#',
        model4: '*PASS*53#VAL#',
      ),
      CodeModel(
        id: 42,
        title: DataManager.contactTheManagerThroughAFixedLine,
        model1: '-',
        model2: '*PASS*39#VAL#',
        model3: '*PASS*39#VAL#',
        model4: '*PASS*39#VAL#',
      ),
      CodeModel(
        id: 44,
        title: DataManager.remoteSilentButtonFunction,
        model1: '-',
        model2: '*PASS*49#VAL#',
        model3: '*PASS*49#VAL#',
        model4: '*PASS*49#VAL#',
      ),
      CodeModel(
        id: 47,
        title: DataManager.sendIncomingCallNumber,
        model1: '-',
        model2: '*PASS*55#VAL#',
        model3: '*PASS*55#VAL#',
        model4: '*PASS*55#VAL#',
      ),
      CodeModel(
        id: 32,
        title: DataManager.changeTheBurglarAlarmPassword,
        model1: '-',
        model2: '*PASS*29#NEWPASS#',
        model3: '*PASS*29#NEWPASS#',
        model4: '*PASS*29#NEWPASS#',
      ),
      CodeModel(
        id: 32,
        title: DataManager.fixedLineDialingType,
        model1: '-',
        model2: '*PASS*35#VAL#',
        model3: '*PASS*35#VAL#',
        model4: '*PASS*35#VAL#',
      ),
      CodeModel(
        id: 32,
        title: DataManager.reportAPowerOutageByCalling,
        model1: '-',
        model2: '*PASS*51#VAL#',
        model3: '*PASS*51#VAL#',
        model4: '*PASS*51#VAL#',
      ),
      CodeModel(
        id: 32,
        title: DataManager.changeTheMenuPassword,
        model1: '-',
        model2: '*PASS*28#NEWPASS#',
        model3: '*PASS*28#NEWPASS#',
        model4: '*PASS*28#NEWPASS#',
      ),
      // CodeModel(
      //   id: 46,
      //   title: DataManager.outputControlBySilent,
      //   model1: '-',
      //   model2: '*PASS*52#VAL#',
      //   model3: '-',
      // ),
      // CodeModel(
      //   id: 43,
      //   title: DataManager.offReportByDial,
      //   model1: '-',
      //   model2: '*PASS*41#VAL#',
      //   model3: '-',
      // ),
      // CodeModel(
      //   id: 45,
      //   title: DataManager.outputDorOpen,
      //   model1: '-',
      //   model2: '*PASS*41#VAL#',
      //   model3: '-',
      // ),
      // CodeModel(
      //   id: 17,
      //   title: DataManager.changePasswordCentral,
      //   model1: '-',
      //   model2: '*PASS*28#NEWPASS#',
      //   model3: '-',
      // ),
    ],
  );

  static Rx<LocationSettingModel> selectLocationSettingModel = LocationSettingModel().obs;
}

// void sendMessage(String key) {
//   if (Core.selectLocationSettingModel.value.id != null) {
//     String code = '';
//     if (Core.selectLocationSettingModel.value.modelType == DataManager.getDeviceModelList().first.id) {
//       code = Core.tbCodeModel.list!.where((element) => element.title == key).toList().first.model1 ?? '';
//     } else {
//       code = Core.tbCodeModel.list!.where((element) => element.title == key).toList().first.model2 ?? '';
//     }
//     sendMessage2(code);
//   } else {
//     snackbarRed(title: s.error, subtitle: s.pleaseSelectDeviceModel);
//   }
// }
DeviceModel getModelSelected() {
  DeviceModel res = DeviceModel();
  List<DeviceModel> ff = Core.deviceModelList;
  int modelType = Core.selectLocationSettingModel.value.modelType ?? 1;
  res = ff[modelType - 1];
  return res;
}
