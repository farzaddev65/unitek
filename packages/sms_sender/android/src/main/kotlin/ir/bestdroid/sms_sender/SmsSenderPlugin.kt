package ir.bestdroid.sms_sender

import android.telephony.SmsManager
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class SmsSenderPlugin : FlutterPlugin, MethodChannel.MethodCallHandler {

    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "sms_channel")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        if (call.method == "sendSms") {
            val phone = call.argument<String>("phone")
            val message = call.argument<String>("message")
            try {
                val smsManager = SmsManager.getDefault()
                smsManager.sendTextMessage(phone, null, message, null, null)
                result.success("SMS sent")
            } catch (e: Exception) {
                result.error("SMS_FAILED", e.message, null)
            }
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
