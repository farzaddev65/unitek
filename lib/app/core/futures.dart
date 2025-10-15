part of 'core.dart';

String getCode(String code) {
  String res = '';
  if (Core.selectLocationSettingModel.value.id != null) {
    //1
    List<CodeModel> list = Core.tbCodeModel.list!.where((element) => element.title == code).toList(); //2
    int modelType = Core.selectLocationSettingModel.value.modelType ?? 0;
    if (modelType == 1) {
      res = list.first.model1 ?? '';
    } else if (modelType == 2) {
      res = list.first.model2 ?? '';
    } else {
      res = list.first.model3 ?? '';
    }
  }
  return res;
}
Future<bool> requestPermission(final Permission permission) async {
  final PermissionStatus status = await permission.status;
  if (status.isGranted) {
    return true;
    // We didn't ask for permission yet or the permission has been denied before but not permanently.
  } else {
    // await permission.request();

    final PermissionStatus result = await permission.request();
    if (result == PermissionStatus.granted) {
      return true;
    }

    return false;
  }
}