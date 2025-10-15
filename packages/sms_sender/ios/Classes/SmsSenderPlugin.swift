import Flutter
import UIKit
import MessageUI

public class SwiftSmsSenderPlugin: NSObject, FlutterPlugin, MFMessageComposeViewControllerDelegate {

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "sms_channel", binaryMessenger: registrar.messenger())
    let instance = SwiftSmsSenderPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "sendSms", MFMessageComposeViewController.canSendText() {
        let args = call.arguments as! [String: String]
        let controller = MFMessageComposeViewController()
        controller.recipients = [args["phone"] ?? ""]
        controller.body = args["message"] ?? ""
        controller.messageComposeDelegate = self

        if let vc = UIApplication.shared.keyWindow?.rootViewController {
            vc.present(controller, animated: true, completion: nil)
        }

        result(true)
    } else {
        result(FlutterError(code: "UNAVAILABLE", message: "Cannot send SMS", details: nil))
    }
  }

  public func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    controller.dismiss(animated: true, completion: nil)
  }
}
