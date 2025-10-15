import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:sms_sender/sms_sender_method_channel.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class SmsSenderPlatform extends PlatformInterface {
  SmsSenderPlatform() : super(token: _token);

  static final Object _token = Object();
  static SmsSenderPlatform _instance = MethodChannelSmsSender();

  static SmsSenderPlatform get instance => _instance;
  static set instance(SmsSenderPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> sendSms({required String phoneNumber, required String message});

  Future<bool> launchSmsMulti(List<String> numbers, [String? body]) {
    if (numbers.length == 1) {
      return launchSms(numbers.first, body);
    }
    String _phones = numbers.join(';');
    if (body != null) {
      final _body = Uri.encodeComponent(body);
      return launchUrl(Uri.parse('sms:/open?addresses=$_phones${separator}body=$_body'));
    }
    return launchUrl(Uri.parse('sms:/open?addresses=$_phones'));
  }

  Future<bool> launchSms(String? number, [String? body]) {
    number ??= '';
    if (body != null) {
      final _body = Uri.encodeComponent(body);
      return launchUrl(Uri.parse('sms:/$number${separator}body=$_body'));
    }
    return launchUrl(Uri.parse('sms:/$number'));
  }

  String get separator => isCupertino ? '&' : '?';

  bool get isCupertino {
    if (kIsWeb) return false; // روی وب هیچ وقت iOS حساب نشه
    return defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS;
  }
}
