import 'package:bestdroid/app/view/splash/splash_page.dart';
import 'package:flutter/services.dart';
import 'package:bestdroid/app/core/assets.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/extensions/extension.dart';
import 'package:bestdroid/app/models/data_manager.dart';
import 'package:bestdroid/app/view/home/home_controller.dart';
import 'package:bestdroid/app/view/location_setting/location_setting_page.dart';
import 'package:bestdroid/app/view/other_setting/other_setting_view.dart';
import 'package:bestdroid/app/view/outputs/outputs_page.dart';
import 'package:bestdroid/app/view/utils/local_storage.dart';
import 'package:bestdroid/app/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeController {
  @override
  void initState() {
    init(
      action: () {
        isLoading(false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (scaffoldKey.currentState!.isDrawerOpen) {
          Navigator.pop(context); // closes the drawer if opened
          return Future<bool>(() => false); // won't exit the app
        } else {
          exitDialog();
          return Future<bool>(() => false); // won't exit the app
        }
      },
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              key: scaffoldKey,
              backgroundColor: context.theme.scaffoldBackgroundColor,
              appBar: _appBar(),
              drawer: _drawer(),
              body: Obx(() => !isLoading.value
                  ? ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, right: 6, left: 6),
                                height: 50,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: const Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                  color: const Color(0xFF74aeac),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    topLeft: Radius.circular(16),
                                  ),
                                ),
                                width: (MediaQuery.of(context).size.width) - 10,
                                child: Center(
                                  child: Obx(() {
                                    return !isLoading.value && selectLocationSettingModel.value.name != null
                                        ? Text(
                                            selectLocationSettingModel.value.name ?? '',
                                          ).bodyMedium()
                                        : Text(s.selectedInstallationLocation).bodyMedium(color: Colors.white);
                                  }),
                                ).onTap(() async {
                                  bool isChange = await Get.to(
                                    const LocationSettingPage(),
                                  );
                                  if (isChange) {
                                    init(
                                      action: () {
                                        isLoading(false);
                                      },
                                    );
                                  }
                                }),
                              ),
                              Wrap(
                                children: [
                                  _items(
                                    code: getCode(DataManager.on),
                                    param: s.onSecurity,
                                    iconData: Assets.alarmOn,
                                    color: const Color(0xff590271),
                                    onTap: () async {},
                                  ),
                                  _items(
                                    code: getCode(DataManager.off),
                                    param: s.offSecurity,
                                    iconData: Assets.alarmOff,
                                    color: const Color(0xff0019b9),
                                    onTap: () async {},
                                  ), //

                                  // if((selectDeviceMode.value.countMultiPart??0)!=100)
                                  if ((selectDeviceMode.value.countMultiPart ?? 0) == 2)
                                    _items(
                                      code: getCode(DataManager.onP1),
                                      param: s.onP1,
                                      iconData: Assets.alarmOn,
                                      color: const Color(0xff590271),
                                      onTap: () async {},
                                    ),
                                  if ((selectDeviceMode.value.countMultiPart ?? 0) == 2)
                                    _items(
                                      code: getCode(DataManager.offP1),
                                      param: s.offP1,
                                      iconData: Assets.alarmOff,
                                      color: const Color(0xff0019b9),
                                      onTap: () async {},
                                    ),

                                  if ((selectDeviceMode.value.countMultiPart ?? 0) == 2)
                                    _items(
                                      code: getCode(DataManager.onP2),
                                      param: s.onP2,
                                      iconData: Assets.alarmOn,
                                      color: const Color(0xff590271),
                                      onTap: () async {},
                                    ),
                                  if ((selectDeviceMode.value.countMultiPart ?? 0) == 2) //
                                    _items(
                                      code: getCode(DataManager.offP2),
                                      param: s.offP2,
                                      iconData: Assets.alarmOff,
                                      color: const Color(0xff0019b8),
                                      onTap: () async {},
                                    ),

                                  if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                    if ((selectLocationSettingModel.value.part1 ?? 100) != 100)
                                      _items(
                                        code: "${getCode(DataManager.on)}${(selectLocationSettingModel.value.part1 ?? 100)+1}#",
                                        param: s.onP((selectLocationSettingModel.value.part1 ?? 100)+1),
                                        iconData: Assets.alarmOff,
                                        color: const Color(0xff0019b9),
                                        onTap: () async {},
                                      ),
                                  if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                    if ((selectLocationSettingModel.value.part1 ?? 100) != 100)
                                      _items(
                                        code: "${getCode(DataManager.off)}${(selectLocationSettingModel.value.part1 ?? 100)+1}#",
                                        param: s.offP((selectLocationSettingModel.value.part1 ?? 100)+1),
                                        iconData: Assets.alarmOff,
                                        color: const Color(0xff0019b9),
                                        onTap: () async {},
                                      ),

                                  if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                    if ((selectLocationSettingModel.value.part2 ?? 0) != 100)
                                      _items(
                                        code: "${getCode(DataManager.on)}${(selectLocationSettingModel.value.part2 ?? 100)+1}#",
                                        param: s.onP((selectLocationSettingModel.value.part2 ?? 100)+1),
                                        iconData: Assets.alarmOn,
                                        color: const Color(0xff0019b9),
                                        onTap: () async {},
                                      ),
                                  if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                    if ((selectLocationSettingModel.value.part2 ?? 0) != 100)
                                      _items(
                                        code: "${getCode(DataManager.off)}${(selectLocationSettingModel.value.part2 ?? 100)+1}#",
                                        param: s.offP((selectLocationSettingModel.value.part2 ?? 100)+1),
                                        iconData: Assets.alarmOff,
                                        color: const Color(0xff0019b9),
                                        onTap: () async {},
                                      ),


                                  //
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part3 ?? 0) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.on)}3#",
                                  //       param: s.onP(3),
                                  //       iconData: Assets.alarmOn,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part3 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.off)}3#",
                                  //       param: s.offP(3),
                                  //       iconData: Assets.alarmOff,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  //
                                  //
                                  //
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part4 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.on)}4#",
                                  //       param: s.onP(4),
                                  //       iconData: Assets.alarmOn,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part4 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.off)}4#",
                                  //       param: s.offP(4),
                                  //       iconData: Assets.alarmOff,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  //
                                  //
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part5 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.on)}5#",
                                  //       param: s.onP(5),
                                  //       iconData: Assets.alarmOn,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part5 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.off)}5#",
                                  //       param: s.offP(5),
                                  //       iconData: Assets.alarmOff,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  //
                                  //
                                  //
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part6 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.on)}6#",
                                  //       param: s.onP(6),
                                  //       iconData: Assets.alarmOn,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part6 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.off)}6#",
                                  //       param: s.offP(6),
                                  //       iconData: Assets.alarmOff,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  //
                                  //
                                  //
                                  //
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part7 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.on)}7#",
                                  //       param: s.onP(7),
                                  //       iconData: Assets.alarmOn,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part7 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.off)}7#",
                                  //       param: s.offP(7),
                                  //       iconData: Assets.alarmOff,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  //
                                  //
                                  //
                                  //
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part8 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.on)}8#",
                                  //       param: s.onP(8),
                                  //       iconData: Assets.alarmOn,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  // if ((selectDeviceMode.value.countMultiPart ?? 0) > 2)
                                  //   if ((selectLocationSettingModel.value.part8 ?? 100) != 100)
                                  //     _items(
                                  //       code: "${getCode(DataManager.off)}8#",
                                  //       param: s.offP(8),
                                  //       iconData: Assets.alarmOff,
                                  //       color: const Color(0xff0019b9),
                                  //       onTap: () async {},
                                  //     ),
                                  //
                                  //


                                  _items(
                                    param: s.chargeCode,
                                    iconData: Assets.simcard2,
                                    color: const Color(0xff122747),
                                    onTap: () async {
                                      getParamDialog(
                                        title: s.chargeCode,
                                        result: (param) {
                                          if (Core.selectLocationSettingModel.value.id != null) {
                                            getParamDialog(
                                              title: s.chargeCode,
                                              inputType: TextInputType.number,
                                              result: (param) {
                                                back();
                                                Future.delayed(const Duration(milliseconds: 1000), () {
                                                  simCardCharge(param);
                                                  setState(() {
                                                    // Here you can write your code for open new view
                                                  });
                                                });
                                              },
                                            );
                                          } else {
                                            snackbarRed(title: s.error, subtitle: s.pleaseSelectDeviceModel);
                                          }
                                        },
                                      );
                                    },
                                  ),

                                  _items(
                                    code: getCode(DataManager.deviceReport),
                                    param: s.deviceReport,
                                    color: const Color(0xff503f3e),
                                    iconData: Assets.info,
                                    onTap: () async {},
                                  ),
                                  _items(
                                    code: getCode(DataManager.simCardInquiry),
                                    param: s.simCardInquiry,
                                    iconData: Assets.simCard,
                                    color: const Color(0xffff6601),
                                    onTap: () async {},
                                  ),
                                  _items(
                                    param: s.output,
                                    iconData: Assets.output,
                                    color: const Color(0xff1b3401),
                                    onTap: () {
                                      if (Core.selectLocationSettingModel.value.id != null) {
                                        push(const OutputsPage());
                                      } else {
                                        snackbarRed(title: s.error, subtitle: s.selectedInstallationLocation);
                                      }
                                    },
                                  ),

                                  _items(
                                    code: getCode(DataManager.partSet),
                                    param: s.partSet,
                                    iconData: Assets.touch,
                                    width: screenWidth - 35,
                                    color: const Color(0xFF944600),
                                    onTap: () async {},
                                  ),
                                ],
                              ),
                              _items(
                                param: s.stopDialing,
                                width: screenWidth - 35,
                                iconData: Assets.stop,
                                color: const Color(0xff5e601B),
                                code: getCode(DataManager.stopDialing),
                                onTap: () async {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ))),
        ).marginOnly(bottom:
        MediaQuery.of(context).padding.bottom),
      ),
    );
  }

  Widget _items({
    required final VoidCallback onTap,
    required final String param,
    required final String iconData,
    double? width,
    String? code,
    Color? color,
    Color? textColor,
  }) =>
      (code ?? '') != '-'
          ? SizedBox(
              height: 110,
              width: width ?? (screenWidth / 2) - 20, //
              child: Card(
                color: color ?? context.theme.primaryColor,
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  color: color ?? context.theme.primaryColor,
                  // style: NeumorphicStyle(
                  //   color:color!=0?Color(color): context.theme.primaryColor,
                  //   shape: NeumorphicShape.convex,
                  //   boxShape:
                  //   NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  // ),
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Center(
                        child: image(
                          iconData,
                          width: 48,
                          color: (textColor ?? context.theme.scaffoldBackgroundColor).withOpacity(0.2),
                        ),
                      ),
                      Center(
                        child: Text(
                          param,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: textColor ?? context.theme.scaffoldBackgroundColor,
                          ),
                        ).marginOnly(bottom: 8),
                      ),
                    ],
                  ),
                ).onTap(() {
                  if (code != null) {
                    if (Core.selectLocationSettingModel.value.id != null) {
                      sendMessage(code);
                    } else {
                      snackbarRed(title: s.error, subtitle: s.pleaseSelectDeviceModel);
                    }
                  } else {
                    onTap();
                  }
                }),
              ),
            )
          : const SizedBox();

  Widget _drawer() => Drawer(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              image(Assets.drawerPic02),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _drawerItems(
                        icon: Assets.location,
                        text: s.locationSetting,
                        onTap: () async {
                          bool isChange = await Get.to(
                            const LocationSettingPage(),
                          );
                          if (isChange) {
                            init(
                              action: () {
                                isLoading(false);
                              },
                            );
                          }
                        },
                      ),
                      _drawerItems(
                        icon: Assets.locationSetting,
                        text: s.otherSetting,
                        onTap: () {
                          if (Core.selectLocationSettingModel.value.id != null) {
                            if (isDebugMode) {
                              push(const OtherSettingView());
                            } else {
                              getParamDialog(
                                title: s.password,
                                result: (param) {
                                  if (param == (getString(DataManager.adminPassword) ?? '1111')) {
                                    push(const OtherSettingView());
                                  } else {
                                    snackbarRed(title: s.warning, subtitle: s.wrongPassword);
                                  }
                                },
                              );
                            }
                          } else {
                            snackbarRed(title: s.error, subtitle: s.selectedInstallationLocation);
                          }

                          // Get.toNamed(Routes.LOCATIONSETTING);
                        },
                      ),
                      _drawerItems(
                        icon: Assets.language,
                        text: s.language,
                        onTap: () {
                          if (Get.locale == const Locale("fa")) {
                            Get.updateLocale(const Locale("en"));
                            setData("locale", "en");
                          } else {
                            Get.updateLocale(const Locale("fa"));
                            setData("locale", "fa");
                          }
                        },
                      ),
                      _drawerItems(
                        icon: Assets.reset,
                        text: s.reset,
                        onTap: () {
                          showYesOrNoDialog(
                            title: s.warning,
                            description: s.sureReset,
                            action: () {
                              clearData();
                              Get.offAll(const SplashPage());
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )),
              Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        "${s.version} ${Core.versionNumber}",
                        textDirection: TextDirection.ltr,
                      ).bodyMedium(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      );

  Widget _drawerItems({required final String icon, required final String text, required final VoidCallback onTap}) => InkWell(
        hoverColor: Colors.transparent,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            children: [
              image(
                icon,
                width: 22,
                color: context.theme.dividerColor.withOpacity(0.8),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                width: 1,
                height: 24,
                color: context.theme.focusColor.withOpacity(0.2),
              ),
              Expanded(
                child: Text(text).bodyMedium(fontSize: 14),
              ),
            ],
          ),
        ),
      );

  PreferredSizeWidget? _appBar() =>AppBar(
    title:  ListTile(
      title: Text(s.appName).bodyLarge(),
      subtitle: Obx(() => Core.selectLocationSettingModel.value.id != null
          ? Text(Core.selectLocationSettingModel.value.modelName ?? '').labelMedium()//
          : const SizedBox()),
    ),
    actions: [
      CircleAvatar(
        backgroundColor: Core.baseColor,
        radius: 32,
        child: Image.asset(Assets.logo, fit: BoxFit.fill).marginAll(8),
      ),
    ],
  );

  Widget dd()=>SizedBox(
    height: 100,
    child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              image(Assets.menu, color: context.theme.primaryColorDark, width: 32).marginOnly(right: 16, left: 16).onTap(() {
                // html.window.parent?.postMessage("close_clicked", "*");
                scaffoldKey.currentState!.openDrawer();
              }),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(s.appName),
                  const SizedBox(
                    height: 8,
                  ),
                  Obx(() => Core.selectLocationSettingModel.value.id != null
                      ? Text(Core.selectLocationSettingModel.value.modelName ?? '')
                      : const SizedBox())
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 16),
            child: CircleAvatar(
              backgroundColor: Core.baseColor,
              radius: 34,
              child: Image.asset(Assets.logo, fit: BoxFit.fill).marginAll(8),
            ),
          )
        ],
      ),
    ),
  );
}
