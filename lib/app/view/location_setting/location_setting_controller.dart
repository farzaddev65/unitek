import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/models/data_manager.dart';
import 'package:bestdroid/app/models/location_setting/location_settings.dart';
import 'package:bestdroid/app/models/model_device/device.dart';

mixin LocationSettingController {
  RxInt simCardTypeIndex = 1.obs;
  RxInt selectSimCardType = 1.obs;
  TextEditingController passwordController = TextEditingController();
  TextEditingController simNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  List<LocationSettingModel> locationSettingList = <LocationSettingModel>[];
  Rx<LocationSettingModel> selectLocationSettingModel = LocationSettingModel().obs;
  List<DeviceModel> deviceModelList = <DeviceModel>[];
  Rx<DeviceModel> selectDeviceModel = DeviceModel().obs;

  RxList<int> listOfSelectedParts = <int>[].obs;

  Future<void> insertNewLocation({required final VoidCallback action}) async {
    if (nameController.text != s.news) {
      LocationSettingModel locationSettingModel = LocationSettingModel(
        name: nameController.text,
        modelType: selectDeviceModel.value.id,
        modelName: selectDeviceModel.value.model,
        countMultiPart: selectDeviceModel.value.countMultiPart,
        password: passwordController.text,
        simNumber: simNumberController.text,
        isWifi: selectLocationSettingModel.value.isWifi,
        selected: selectLocationSettingModel.value.selected,
        simType: selectLocationSettingModel.value.simType,
        part1: listOfSelectedParts.isNotEmpty ? listOfSelectedParts.first : 100,
        part2: listOfSelectedParts.length > 1 ? listOfSelectedParts[1] : 100,
      );
      await DataManager.insertLocationSetting(locationSettingModel);
      List list = await DataManager.getLocationSettingModelList();
      int id = list.length;
      await DataManager.resetLocationSettingSelected(id);
      action();
    } else {
      snackbarRed(title: s.warning, subtitle: s.nameIsNotValid);
    }
  }

  Future<void> updateLocation() async {
    if (nameController.text != s.news) {
      if (selectLocationSettingModel.value.id != null) {
        LocationSettingModel locationSettingModel = LocationSettingModel(
          id: selectLocationSettingModel.value.id,
          name: nameController.text,
          modelType: selectDeviceModel.value.id,
          modelName: selectDeviceModel.value.model,
          countMultiPart: selectDeviceModel.value.countMultiPart,
          password: passwordController.text,
          simNumber: simNumberController.text,
          isWifi: selectLocationSettingModel.value.isWifi,
          selected: selectLocationSettingModel.value.selected,
          simType: selectLocationSettingModel.value.simType,
          part1: listOfSelectedParts.isNotEmpty ? listOfSelectedParts.first : 100,
          part2: listOfSelectedParts.length > 1 ? listOfSelectedParts[1] : 100,
        );
        await DataManager.updateLocationSetting(locationSettingModel);
        await DataManager.resetLocationSettingSelected(selectLocationSettingModel.value.id ?? 0);
        back(result: true);
      }
    } else {
      snackbarRed(title: s.warning, subtitle: s.nameIsNotValid);
    }

    debugPrint('DDDDD');
  }

  void updateSimCardTypeIndex(int id) {}

  Future<void> init() async {
    locationSettingList.clear();
    deviceModelList.clear();
    locationSettingList.add(LocationSettingModel(name: s.news));
    List<LocationSettingModel> list = await DataManager.getLocationSettingModelList();
    if (list.where((element) => element.selected == 1).toList().isNotEmpty) {
      selectLocationSettingModel(list.where((element) => element.selected == 1).toList().first);
      Core.selectLocationSettingModel(list.where((element) => element.selected == 1).toList().first);
    } else {
      selectLocationSettingModel(LocationSettingModel(name: s.news));
      Core.selectLocationSettingModel(LocationSettingModel(name: s.news));
    }
    locationSettingList.addAll(list);
    deviceModelList.addAll(await DataManager.getDeviceModelList());
    if (selectLocationSettingModel.value.modelType != null) {
      selectDeviceModel(deviceModelList.where((element) => element.id == selectLocationSettingModel.value.modelType).toList().first);
    } else {
      selectDeviceModel(deviceModelList.first);
    }
    nameController.text = selectLocationSettingModel.value.name ?? '';
    simNumberController.text = selectLocationSettingModel.value.simNumber ?? '';
    passwordController.text = selectLocationSettingModel.value.password;
    if((selectLocationSettingModel.value.part1??100)!=100){
      listOfSelectedParts.add((selectLocationSettingModel.value.part1??100) );

    }
    if((selectLocationSettingModel.value.part2??100)!=100){
      listOfSelectedParts.add((selectLocationSettingModel.value.part2??100) );

    }

  }

  Future<void> deleteSelected() async {
    DataManager.deleteLocationSetting(selectLocationSettingModel.value.id ?? 0);
    List<LocationSettingModel> list = await DataManager.getLocationSettingModelList();
    if (list.isNotEmpty) {
      DataManager.resetLocationSettingSelected(list.first.id ?? 0);
    } else {}
    back();
  }
}
