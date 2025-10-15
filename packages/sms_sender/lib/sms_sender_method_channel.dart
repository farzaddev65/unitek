import 'package:flutter/services.dart';
import 'sms_sender_platform_interface.dart';
import 'dart:io';

class MethodChannelSmsSender extends SmsSenderPlatform {
  static const _channel = MethodChannel('sms_channel');

  @override
  Future<bool> sendSms({required String phoneNumber, required String message}) async {
    if (Platform.isAndroid || Platform.isIOS) {
      try {
        final result = await _channel.invokeMethod('sendSms', {
          'phone': phoneNumber,
          'message': message,
        });
        return result != null;
      } catch (e) {
        return false;
      }
    } else {
      // fallback for web or unknown platform
      return false;
    }
  }
}
