part of 'core.dart';

S s = S.of(context);

bool isPersianLang() => Get.locale == const Locale("fa");

ThemeData getTheme() {
  if (getString(AppConstants.theme) == AppConstants.lightTheme) return AppThemes.lightTheme();
  if (getString(AppConstants.theme) == AppConstants.darkTheme) return AppThemes.darkTheme();
  return AppThemes.lightTheme();
}

void exitDialog() {
  Get.defaultDialog(
    title: s.exit,
    titleStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    // middleText: "Is True or false ?",
    content: Text(
      s.doYouExit,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    ),
    confirm: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          hoverColor: Colors.transparent,
          onTap: () async {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            Future<bool>(() => true);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green,
            ),
            child: Text(s.exit).bodySmall(),
          ),
        ),
        InkWell(
          hoverColor: Colors.transparent,
          onTap: () {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.orange.shade800,
            ),
            child: Text(s.cancel).bodySmall(),
          ),
        ),
      ],
    ),
  );
}

void getParamDialog({required String title, TextInputType? inputType, required Function(String param) result}) {
  String _param = '';
  Get.defaultDialog(
    title: title,
    titleStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    // middleText: "Is True or false ?",
    content: appTextFormField(
      inputType: inputType ?? TextInputType.number,
      onChanged: (value) {
        _param = value;
      },
    ),
    confirm: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        button(
          title: s.confirm,
          onTap: () => result(_param),
        ),
        button(
          title: s.cancel,
          onTap: () => Get.back(),
        ),
      ],
    ),
  );
}

void showYesOrNoDialog({required String title, required final String description, required final VoidCallback action}) {
  Get.defaultDialog(
    title: title,
    titleStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    // middleText: "Is True or false ?",
    content: Text(description).bodyMedium(color: context.theme.primaryColorDark),
    confirm: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        button(
          title: s.confirm,
          onTap: () => action(),
        ),
        button(
          title: s.cancel,
          onTap: () => Get.back(),
        ),
      ],
    ),
  );
}

void simCardCharge(String key) {
  String message = getCode(DataManager.chargeCode).replaceAll('SHARGE', key);

  sendMessage(message);
}

void sendMessage(String message) async {
  if (isWeb || await requestPermission(Permission.sms)) {
    if (Core.selectLocationSettingModel.value.id != null) {
      String pass = Core.selectLocationSettingModel.value.password;
      String body = message.replaceAll("PASS", pass);
      Get.defaultDialog(
        title: s.sendMessage,
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        // middleText: "Is True or false ?",
        content: Text(
          // "آیا اس ام اس ارسال شود؟",
          body != '-' ? body : s.codIsDisable,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        ).bodySmall(),
        confirm: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () async {
                if (Core.selectLocationSettingModel.value.id != null) {
                  if (message != '-') {
                    Get.back();
                    await SmsSender.sendSms(
                      Core.selectLocationSettingModel.value.simNumber ?? '',
                      body,
                      // sendDirect: true,
                    );
                    snackbarGreen(title: s.success, subtitle: s.smsSentSuccessfully);
                  }
                } else {
                  snackbarRed(title: s.error, subtitle: s.selectedInstallationLocation);
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: body != '-' ? Colors.green : Colors.grey,
                ),
                child: Text(s.send),
              ),
            ),
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.orange.shade800,
                ),
                child: Text(s.cancel),
              ),
            ),
          ],
        ),
      );
    } else {
      snackbarRed(title: s.error, subtitle: s.selectedInstallationLocation);
    }
  }
}
