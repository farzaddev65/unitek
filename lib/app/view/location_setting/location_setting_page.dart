import 'package:bestdroid/app/extensions/extension.dart';
import 'package:get/get.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/models/data_manager.dart';
import 'package:bestdroid/app/models/location_setting/location_settings.dart';
import 'package:bestdroid/app/view/location_setting/location_setting_controller.dart';
import 'package:bestdroid/app/widgets/custom_dropdown.dart';
import 'package:bestdroid/app/widgets/widgets.dart';

class LocationSettingPage extends StatefulWidget {
  const LocationSettingPage({super.key});

  @override
  State<LocationSettingPage> createState() => _LocationSettingPageState();
}

class _LocationSettingPageState extends State<LocationSettingPage> with LocationSettingController {
  @override
  void initState() {
    init();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        margin: EdgeInsets.only(bottom:
        MediaQuery.of(context).padding.bottom),
        child: Scaffold(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: context.theme.scaffoldBackgroundColor,
            iconTheme: IconThemeData(
              color: context.theme.dividerColor,
            ),
            title: Text(s.locationSetting),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: context.theme.dividerColor),
              onPressed: () => {Navigator.of(context).pop(false)},
            ),
            centerTitle: true,
          ),
          body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   s.installationLocation,
                    //   style: TextStyle(
                    //     fontSize: 12,
                    //     color: context.theme.dividerColor,
                    //   ),
                    // ).marginOnly(bottom: 4, top: 8),
                    Obx(
                      () => DropDownWidget(
                        lable: s.installationLocation,
                        showSearch: false,
                        showRadioButton: false,
                        multiSelect: false,
                        title: selectLocationSettingModel.value.name ?? s.installationLocation,
                        items: locationSettingList.map((e) => e.name ?? '').toList(),
                        itemSelected: (List<String> items) async {
                          if (items.first == s.news) {
                            selectLocationSettingModel(LocationSettingModel(name: s.news));
                            passwordController.clear();
                            nameController.clear();
                            simNumberController.clear();
                          } else {
                            List<LocationSettingModel> list = locationSettingList.where((element) => element.name == items.first).toList();
                            selectLocationSettingModel(list.first);
                            await DataManager.resetLocationSettingSelected(selectLocationSettingModel.value.id ?? 0);
                            init();
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    appTextFormField(
                      title: s.nameOfInstallationLocation,
                      controller: nameController,
                    ),
                    SizedBox(height: 8),
                    Obx(() => DropDownWidget(
                          lable: s.deviceModel,
                          showSearch: false,
                          showRadioButton: false,
                          multiSelect: false,
                          title: selectDeviceModel.value.model ?? s.installationLocation,
                          items: deviceModelList.map((e) => e.model ?? '').toList(),
                          itemSelected: (List<String> items) {
                            if (items.first == s.news) {
                              passwordController.clear();
                              nameController.clear();
                            } else {
                              selectDeviceModel(deviceModelList.where((element) => element.model == items.first).toList().first);
                            }
                          },
                        )),
                    SizedBox(height: 8),

                    Obx(
                      () => (selectDeviceModel.value.countMultiPart??0) > 2
                          ? Column(
                              children: [
                                Text(s.pleaseSelectThePartYouWant),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(),
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: GridView.builder(
                                    itemCount: selectDeviceModel.value.countMultiPart,
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4, // تعداد ستون‌ها
                                      crossAxisSpacing: 8.0, // فاصله بین ستون‌ها
                                      mainAxisSpacing: 8.0, // فاصله بین ردیف‌ها
                                      childAspectRatio: 4 / 3.2, // نسبت عرض به ارتفاع
                                    ),
                                    itemBuilder: (context, index) => Row(
                                      children: [
                                        Obx(() => SizedBox(
                                          width: 24,
                                          child: Checkbox(
                                              value: listOfSelectedParts.contains(index),
                                              onChanged: (value) {

                                                  if (listOfSelectedParts.contains(index)) {
                                                    listOfSelectedParts.remove(index);
                                                  } else {
                                                    if (listOfSelectedParts.length < 2) {
                                                    listOfSelectedParts.add(index);
                                                    } else {
                                                      snackbarRed(title: s.warning, subtitle: s.theMaximumNumberOfPartChoicesIs(2));
                                                    }
                                                  } //

                                              }) ,
                                        )),
                                        Text("پارت ${index + 1}"),
                                      ],
                                    ).onTap(() {
                                      if (listOfSelectedParts.contains(index)) {
                                        listOfSelectedParts.remove(index);
                                      } else {
                                        if (listOfSelectedParts.length < 2) {
                                          listOfSelectedParts.add(index);
                                        } else {
                                          snackbarRed(title: s.warning, subtitle: s.theMaximumNumberOfPartChoicesIs(2));
                                        }
                                      } //
                                    }),
                                  ),
                                ),
                                //
                                // List.generate(selectDeviceModel.value.countMultiPart, (index) =>),
                              ],
                            )
                          : SizedBox(),
                    ),

                    // if (selectDeviceModel.value.countMultiPart! > 2)
                    //   Column(
                    //     children: [
                    //       Text('لطفا پارت مورد نظر خود را انتخاب کنید'),
                    //       GridView.builder(
                    //         itemCount: selectDeviceModel.value.countMultiPart,
                    //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: 4, // تعداد ستون‌ها
                    //           crossAxisSpacing: 8.0, // فاصله بین ستون‌ها
                    //           mainAxisSpacing: 8.0, // فاصله بین ردیف‌ها
                    //           childAspectRatio: 4 / 3.2, // نسبت عرض به ارتفاع
                    //         ),
                    //         itemBuilder: (context, index) => Text(index.toString()),
                    //       ),
                    //       //
                    //       // List.generate(selectDeviceModel.value.countMultiPart, (index) =>),
                    //     ],
                    //   ),

                    SizedBox(height: 8),
                    appTextFormField(
                      title: s.simCardNumber,
                      inputType: TextInputType.number,
                      maxLength: 11,
                      controller: simNumberController,
                    ),

                    const SizedBox(height: 8),
                    appTextFormField(
                      title: s.devicePassword,
                      inputType: TextInputType.number,
                      controller: passwordController,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => button(
                            title: s.change,
                            backgroundColor: (selectLocationSettingModel.value.id ?? '') != '' ? context.theme.primaryColor : context.theme.primaryColor.withOpacity(0.5),
                            onTap: () {
                              if ((selectLocationSettingModel.value.id ?? '') != '') {
                                updateLocation();
                              }
                            },
                          ),
                        ).expanded(),
                        SizedBox(width: 4),
                        Obx(
                          () => button(
                            title: s.newLocation,
                            backgroundColor: (selectLocationSettingModel.value.id ?? '') == '' ? context.theme.primaryColor : context.theme.primaryColor.withOpacity(0.5),
                            onTap: () {
                              if ((selectLocationSettingModel.value.id ?? '') == '') {
                                if (nameController.text != '') {
                                  if (simNumberController.text != '') {
                                    if (passwordController.text.length > 3) {
                                      insertNewLocation(
                                        action: () {
                                          // Navigator.of(context).pop(true);
                                          back(result: true);
                                        },
                                      );
                                    }
                                  }
                                }
                              }
                            },
                          ),
                        ).expanded(),
                        SizedBox(width: 4),
                        Obx(
                          () => button(
                            title: s.deleteLocation,
                            backgroundColor: (selectLocationSettingModel.value.id ?? '') != '' ? context.theme.primaryColor : context.theme.primaryColor.withOpacity(0.5),
                            onTap: () {
                              if ((selectLocationSettingModel.value.id ?? '') != '') {
                                deleteSelected();
                              }
                            },
                          ),
                        ).expanded(),
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
