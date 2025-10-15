import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/models/data_manager.dart';
import 'package:bestdroid/app/models/location_setting/location_settings.dart';
import 'package:bestdroid/app/models/model_device/device.dart';

mixin HomeController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Rx<DeviceModel> selectDeviceMode = DeviceModel().obs;
  final formKey = GlobalKey<FormState>();
  RxBool isLoading = true.obs;
  Rx<LocationSettingModel> selectLocationSettingModel = LocationSettingModel().obs;

  Future<void> init({required final VoidCallback action}) async{
    List<LocationSettingModel> list =await DataManager.getLocationSettingModelList();
    if (list.isNotEmpty) {
      selectLocationSettingModel(list.where((element) => element.selected == 1).toList().first);
      Core.selectLocationSettingModel(list.where((element) => element.selected == 1).toList().first);
    }
    selectDeviceMode(getModelSelected());
    action();
  }
}
