import 'dart:html' as html;
import 'sms_sender_platform_interface.dart';

class SmsSenderWeb extends SmsSenderPlatform {
  @override
  Future<bool> sendSms({required String phoneNumber, required String message}) async {
    bool _messageSent =
    await SmsSenderPlatform.instance.launchSmsMulti([phoneNumber], message);
    // if (_messageSent) return 'Message Sent!';
    return _messageSent;
  }

  static void registerWith(_) {
    SmsSenderPlatform.instance = SmsSenderWeb();
  }

}