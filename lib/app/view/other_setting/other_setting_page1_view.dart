import 'package:flutter/material.dart';
import 'package:bestdroid/app/extensions/extension.dart';
import 'package:bestdroid/app/models/other/key_string.dart';
import 'package:bestdroid/app/view/other_setting/other_setting_controller.dart';
import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/widgets/custom_dropdown.dart';
import 'package:bestdroid/app/widgets/widgets.dart';

class OtherSettingPage1View extends StatefulWidget {
  const OtherSettingPage1View({super.key});

  @override
  State<OtherSettingPage1View> createState() => _OtherSettingPage1ViewState();
}

class _OtherSettingPage1ViewState extends State<OtherSettingPage1View> with OtherSettingController {
  @override
  void initState() {
    setZoneParam();
    setCallPriorityParam();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(color: context.theme.dividerColor.withOpacity(0.5), blurRadius: 20, offset: const Offset(0, 8)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  s.setupCallMemoryAndSMS,
                  style: TextStyle(
                    fontSize: 12,
                    color: context.theme.dividerColor,
                  ),
                ).marginOnly(bottom: 4, top: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: appTextFormField(
                        height: 50,
                        controller: etMemory,
                        inputType: TextInputType.number,
                        textAlign: TextAlign.center,
                        hint: s.memory,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: appTextFormField(
                        height: 50,
                        inputType: TextInputType.number,
                        controller: etPhone,
                        hint: s.simCardNumber,
                      ),
                    ),

                    // Flexible(
                    //   child: Container(
                    //     height: 50,
                    //     margin: const EdgeInsets.symmetric(horizontal: 8),
                    //     width: double.infinity,
                    //     padding: const EdgeInsets.all(8.0),
                    //     decoration: BoxDecoration(
                    //       border: Border.all(color: context.theme.dividerColor.withOpacity(0.8), width: 1),
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //     child: Center(
                    //       child: TextFormField(
                    //
                    //         validator: (value) {
                    //           if (value == null || value.isEmpty) {
                    //             return 'Please Enter simCard number'.tr;
                    //           }
                    //           return null;
                    //         },
                    //         textAlignVertical: TextAlignVertical.center,
                    //         decoration: InputDecoration(
                    //
                    //           border: InputBorder.none,
                    //           isCollapsed: true,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      title: s.save,
                      onTap: () {
                        insertToMemory();
                      },
                    ).expanded(),
                    SizedBox(width: 4),
                    button(
                      title: s.show,
                      onTap: () {
                        showMemory();
                      },
                    ).expanded(),
                    SizedBox(width: 4),
                    button(
                      title: s.delete,
                      onTap: () {
                        deleteFromMemory();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(color: context.theme.dividerColor.withOpacity(0.5), blurRadius: 20, offset: const Offset(0, 8)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => DropDownWidget(
                      lable: s.callPriorityBy,
                      title: selectCallPriority.value.title ?? s.callPriorityBy,
                      items: callPriorityList.map((element) => element.title ?? '').toList(),
                      itemSelected: (items) {
                        selectCallPriority(callPriorityList.where((p0) => p0.title == items.first).toList().first);
                      },
                    )),
                const SizedBox(height: 8),
                button(
                  title: s.send,
                  onTap: () {
                    sedCallPriority();
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(color: context.theme.dividerColor.withOpacity(0.5), blurRadius: 20, offset: const Offset(0, 8)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                appTextFormField(
                  title: s.deleteRemote,
                  inputType: TextInputType.number,
                  maxLength: 1,
                  controller: etRemoteNumber,
                  hint: s.enterTheRemoteNumberFrom1To9,
                ),
                const SizedBox(height: 8),
                button(
                  title: s.send,
                  onTap: () {
                    deleteRemote();
                  },
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(color: context.theme.dividerColor.withOpacity(0.5), blurRadius: 20, offset: const Offset(0, 8)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(s.setZones).bodyMedium().marginOnly(bottom: 4, top: 20),
                Obx(() {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.theme.dividerColor.withOpacity(0.8), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        // const OtherSettingSpinnerZoneWidget(),
                        Obx(() => DropDownWidget(
                              title: selectZone.value.title ?? s.zoneNumber,
                              items: zoneList.map((element) => element.title ?? '').toList(),
                              itemSelected: (List<String> items) {
                                selectZone(zoneList.where((element) => element.title == items.first).toList().first);
                              },
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(0),
                                ),
                                Text(
                                  s.normal,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(1),
                                ),
                                Text(
                                  s.fireAlarm,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(2),
                                ),
                                Text(
                                  s.smart,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [

                                Radio(
                                  value: 5,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(5),
                                ),
                                Text(
                                  s.hide,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(3),
                                ),
                                Text(
                                  s.timer,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 4,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(4),
                                ),
                                Text(
                                  s.hour24,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 6,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(6),
                                ),
                                Text(
                                  s.parting,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 7,
                                  groupValue: setZoneStatus.value,
                                  onChanged: (value) => setSetZoneStatus(7),
                                ),
                                Text(
                                  s.chaim,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                           Row(
                             children: [
                               Radio(
                                 value: 8,
                                 groupValue: setZoneStatus.value,
                                 onChanged: (value) => setSetZoneStatus(8),
                               ),
                               Text(
                                 s.delete,
                                 style: const TextStyle(
                                   fontSize: 12,
                                 ),
                               ),
                             ],
                           )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 8),
                button(
                  title: s.send,
                  onTap: () {
                    sendSetZone();
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(color: context.theme.dividerColor.withOpacity(0.5), blurRadius: 20, offset: const Offset(0, 8)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(s.singleSirenVolumeControl).bodySmall().marginOnly(bottom: 4, top: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.theme.dividerColor.withOpacity(0.8), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Obx(() {
                    return Directionality(
                      textDirection: TextDirection.ltr,
                      child: Slider(
                        value: volumeSingleAlarm.value,
                        min: 0,
                        max: 9,
                        divisions: 9,
                        label: volumeSingleAlarm.value.round().toString(),
                        onChanged: (value) {
                          setVolumeSingleAlarm(value);
                        },
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 8),
                button(
                  title: s.send,
                  onTap: () {
                    sendVolumeSingleAlarm();
                  },
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(color: context.theme.dividerColor.withOpacity(0.5), blurRadius: 20, offset: const Offset(0, 8)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(s.setVolumeMainAlarm).bodySmall().marginOnly(bottom: 4, top: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.theme.dividerColor.withOpacity(0.8), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Obx(() {
                    return Directionality(
                      textDirection: TextDirection.ltr,
                      child: Slider(
                        value: volumeMainAlarm.value,
                        min: 0,
                        max: 9,
                        divisions: 9,
                        label: volumeMainAlarm.value.round().toString(),
                        onChanged: (value) {
                          setVolumeMainAlarm(value);
                        },
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 8),
                button(
                  title: s.send,
                  onTap: () {
                    sendVolumeMainAlarm();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Radio(
  // value: 5,
  // groupValue: setZoneStatus.value,
  // onChanged: (value) => setSetZoneStatus(5),
  // )

  Widget radios({required List<KeyStringModel> buttons, required Function(KeyStringModel selected) onClick}) {
    RxInt value = 0.obs;
    const double runSpacing = 4;
    const double spacing = 4;
    const columns = 4;
    final w = (MediaQuery.of(context).size.width - runSpacing * (columns - 1)) / columns;

    return SingleChildScrollView(
      child: Wrap(
        runSpacing: runSpacing,
        spacing: spacing,
        alignment: WrapAlignment.center,
        children: List.generate(buttons.length, (index) {
          return Container(
            width: w,
            height: w / 2,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                value(index);
              },
              child: Obx(
                () => Row(
                  children: [
                    Text(buttons[index].title ?? ''),
                    Radio(
                      value: value.value,
                      groupValue: value.value,
                      onChanged: (val) => value(index),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

//   Widget radios({required List<KeyStringModel> buttons, required Function(KeyStringModel selected) onClick}) {
//     RxInt value = 0.obs;
//     return GridView.builder(
//         itemCount: buttons.length,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           mainAxisExtent: 60,
//         ),
//         itemBuilder: (final _, final int index) {
//           return Obx(
//             () => Row(
//               children: [
//                 Text(buttons[index].title ?? ''),
//                 Radio(
//                   value: value.value,
//                   groupValue: setZoneStatus.value,
//                   onChanged: (val) => value(val),
//                 ),
//               ],
//             ),
//           );
//         });
//   }
// }

class AlignedGrid extends StatelessWidget {
  final double runSpacing = 4;//
  final double spacing = 4;
  final int listSize = 15;
  final columns = 4;
  final List<KeyStringModel> list;
  final Function(KeyStringModel selected) onClick;

  const AlignedGrid({
    super.key,
    required this.list,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    final w = (MediaQuery.of(context).size.width - runSpacing * (columns - 1)) / columns;
    return SingleChildScrollView(
      child: Wrap(
        runSpacing: runSpacing,
        spacing: spacing,
        alignment: WrapAlignment.center,
        children: List.generate(listSize, (index) {
          return Container(
            width: w,
            height: w,
            color: Colors.green[200],
          );
        }),
      ),
    );
  }
}
