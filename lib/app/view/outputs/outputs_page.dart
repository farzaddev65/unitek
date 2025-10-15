import 'package:bestdroid/app/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:bestdroid/app/core/assets.dart';
import 'package:bestdroid/app/models/output/output.dart';
import 'package:bestdroid/app/view/outputs/outputs_controller.dart';
import 'package:bestdroid/app/widgets/widgets.dart';

import '../../core/core.dart';

class OutputsPage extends StatefulWidget {
  const OutputsPage({super.key});

  @override
  State<OutputsPage> createState() => _OutputsPageState();
}

class _OutputsPageState extends State<OutputsPage> with OutputsController {
  @override
  void initState() {
    get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Scaffold(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          appBar: appBar(s.output),
          body: Obx(() {//
            return isLoaded.value && outputList.isNotEmpty
                ? ListView.builder(
                    itemCount:getModelSelected().id==1?1:getModelSelected().id==2?outputList.value.length:getModelSelected().id==3?1: outputList.value.length,
                    itemBuilder: (context, index) {
                      return _items(outputModel: outputList[index]);
                    },
                  )
                : Container();
          }),
        ),
      ),
    );
  }

  Widget _items({
    required OutputModel outputModel,
  }) =>
      Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: image(Assets.edit, width: 16, height: 16),
                  ).onTap(() {
                    changeOutputTitle(outputModel);
                  }),
                  const SizedBox(width: 8),
                  Text(outputModel.title).bodyLarge(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green, shadowColor: Colors.black87, tapTargetSize: MaterialTapTargetSize.padded),
                    onPressed: () {
                      changeOutput(outputModel, 0);
                    },
                    child: Text(s.off).labelLarge(color: Colors.white),
                  ).marginSymmetric(horizontal: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, shadowColor: Colors.black87, tapTargetSize: MaterialTapTargetSize.padded),
                    onPressed: () {
                      changeOutput(outputModel, 1);
                    },
                    child: Text(s.on).labelLarge(color: Colors.white),
                  ).marginSymmetric(horizontal: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shadowColor: Colors.black87, tapTargetSize: MaterialTapTargetSize.padded),
                    onPressed: () {
                      changeOutput(outputModel, 2);
                    },
                    child: Text(s.momentary).labelLarge(color: Colors.white),
                  ).marginSymmetric(horizontal: 8),
                ],
              ),
            )
          ],
        ),
      );
}
