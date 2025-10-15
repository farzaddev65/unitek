import 'sms_sender_platform_interface.dart';

class SmsSender {
  static Future<bool> sendSms(String phone, String message) {
    return SmsSenderPlatform.instance.sendSms(phoneNumber: phone, message: message);
  }
}
