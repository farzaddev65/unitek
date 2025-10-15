// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Unitek`
  String get appName {
    return Intl.message('Unitek', name: 'appName', desc: '', args: []);
  }

  /// `en_US`
  String get en_US {
    return Intl.message('en_US', name: 'en_US', desc: '', args: []);
  }

  /// `fa`
  String get fa {
    return Intl.message('fa', name: 'fa', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Device report`
  String get deviceReport {
    return Intl.message(
      'Device report',
      name: 'deviceReport',
      desc: '',
      args: [],
    );
  }

  /// `Do send message?`
  String get doSendMessage {
    return Intl.message(
      'Do send message?',
      name: 'doSendMessage',
      desc: '',
      args: [],
    );
  }

  /// `Emergency siren`
  String get emergencySiren {
    return Intl.message(
      'Emergency siren',
      name: 'emergencySiren',
      desc: '',
      args: [],
    );
  }

  /// `Location setting`
  String get locationSetting {
    return Intl.message(
      'Location setting',
      name: 'locationSetting',
      desc: '',
      args: [],
    );
  }

  /// `Output`
  String get output {
    return Intl.message('Output', name: 'output', desc: '', args: []);
  }

  /// `On Security`
  String get onSecurity {
    return Intl.message('On Security', name: 'onSecurity', desc: '', args: []);
  }

  /// `Off Security`
  String get offSecurity {
    return Intl.message(
      'Off Security',
      name: 'offSecurity',
      desc: '',
      args: [],
    );
  }

  /// `Installation location`
  String get installationLocation {
    return Intl.message(
      'Installation location',
      name: 'installationLocation',
      desc: '',
      args: [],
    );
  }

  /// `Output name`
  String get outputName {
    return Intl.message('Output name', name: 'outputName', desc: '', args: []);
  }

  /// `Enter the title`
  String get enterTheTitle {
    return Intl.message(
      'Enter the title',
      name: 'enterTheTitle',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '******SETTING*********' key

  /// `Name of installation location`
  String get nameOfInstallationLocation {
    return Intl.message(
      'Name of installation location',
      name: 'nameOfInstallationLocation',
      desc: '',
      args: [],
    );
  }

  /// `Device model`
  String get deviceModel {
    return Intl.message(
      'Device model',
      name: 'deviceModel',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message('Code', name: 'code', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Other setting`
  String get otherSetting {
    return Intl.message(
      'Other setting',
      name: 'otherSetting',
      desc: '',
      args: [],
    );
  }

  /// `Memory`
  String get memory {
    return Intl.message('Memory', name: 'memory', desc: '', args: []);
  }

  /// `Exit`
  String get exit {
    return Intl.message('Exit', name: 'exit', desc: '', args: []);
  }

  /// `Eeeexit`
  String get eeeexit {
    return Intl.message('Eeeexit', name: 'eeeexit', desc: '', args: []);
  }

  /// `Reports`
  String get reports {
    return Intl.message('Reports', name: 'reports', desc: '', args: []);
  }

  /// `Select the device operator`
  String get selectTheDeviceOperator {
    return Intl.message(
      'Select the device operator',
      name: 'selectTheDeviceOperator',
      desc: '',
      args: [],
    );
  }

  /// `Single siren volume control`
  String get singleSirenVolumeControl {
    return Intl.message(
      'Single siren volume control',
      name: 'singleSirenVolumeControl',
      desc: '',
      args: [],
    );
  }

  /// `Main siren volume control`
  String get mainSirenVolumeControl {
    return Intl.message(
      'Main siren volume control',
      name: 'mainSirenVolumeControl',
      desc: '',
      args: [],
    );
  }

  /// `Set zones`
  String get setZones {
    return Intl.message('Set zones', name: 'setZones', desc: '', args: []);
  }

  /// `Zone number`
  String get zoneNumber {
    return Intl.message('Zone number', name: 'zoneNumber', desc: '', args: []);
  }

  /// `Warning`
  String get warning {
    return Intl.message('Warning', name: 'warning', desc: '', args: []);
  }

  /// `The password is incorrect`
  String get thePasswordIsIncorrect {
    return Intl.message(
      'The password is incorrect',
      name: 'thePasswordIsIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Call priority by`
  String get callPriorityBy {
    return Intl.message(
      'Call priority by',
      name: 'callPriorityBy',
      desc: '',
      args: [],
    );
  }

  /// `Delete remote`
  String get deleteRemote {
    return Intl.message(
      'Delete remote',
      name: 'deleteRemote',
      desc: '',
      args: [],
    );
  }

  /// `Enter the memory`
  String get enterTheMemory {
    return Intl.message(
      'Enter the memory',
      name: 'enterTheMemory',
      desc: '',
      args: [],
    );
  }

  /// `Enter the remote number`
  String get enterTheRemoteNumber {
    return Intl.message(
      'Enter the remote number',
      name: 'enterTheRemoteNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter the remote number from 1 To 9`
  String get enterTheRemoteNumberFrom1To9 {
    return Intl.message(
      'Enter the remote number from 1 To 9',
      name: 'enterTheRemoteNumberFrom1To9',
      desc: '',
      args: [],
    );
  }

  /// `Device password`
  String get devicePassword {
    return Intl.message(
      'Device password',
      name: 'devicePassword',
      desc: '',
      args: [],
    );
  }

  /// `Default dialing system`
  String get defaultDialingSystem {
    return Intl.message(
      'Default dialing system',
      name: 'defaultDialingSystem',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Momentary`
  String get momentary {
    return Intl.message('Momentary', name: 'momentary', desc: '', args: []);
  }

  /// `Fixed line`
  String get fixedLine {
    return Intl.message('Fixed line', name: 'fixedLine', desc: '', args: []);
  }

  /// `Remote control`
  String get remoteControl {
    return Intl.message(
      'Remote control',
      name: 'remoteControl',
      desc: '',
      args: [],
    );
  }

  /// `One minute`
  String get oneMinute {
    return Intl.message('One minute', name: 'oneMinute', desc: '', args: []);
  }

  /// `Two minute`
  String get twoMinute {
    return Intl.message('Two minute', name: 'twoMinute', desc: '', args: []);
  }

  /// `Three minute`
  String get threeMinute {
    return Intl.message(
      'Three minute',
      name: 'threeMinute',
      desc: '',
      args: [],
    );
  }

  /// `Fore minute`
  String get foreMinute {
    return Intl.message('Fore minute', name: 'foreMinute', desc: '', args: []);
  }

  /// `Five minute`
  String get fiveMinute {
    return Intl.message('Five minute', name: 'fiveMinute', desc: '', args: []);
  }

  /// `Internal speaker`
  String get internalSpeaker {
    return Intl.message(
      'Internal speaker',
      name: 'internalSpeaker',
      desc: '',
      args: [],
    );
  }

  /// `Internal external speaker siren`
  String get internalExternalSpeakerSiren {
    return Intl.message(
      'Internal external speaker siren',
      name: 'internalExternalSpeakerSiren',
      desc: '',
      args: [],
    );
  }

  /// `Output adjustment 1`
  String get outputAdjustment1 {
    return Intl.message(
      'Output adjustment 1',
      name: 'outputAdjustment1',
      desc: '',
      args: [],
    );
  }

  /// `Always`
  String get always {
    return Intl.message('Always', name: 'always', desc: '', args: []);
  }

  /// `Adjust the type of ding dong`
  String get adjustTheTypeOfDingDong {
    return Intl.message(
      'Adjust the type of ding dong',
      name: 'adjustTheTypeOfDingDong',
      desc: '',
      args: [],
    );
  }

  /// `Melody`
  String get melody {
    return Intl.message('Melody', name: 'melody', desc: '', args: []);
  }

  /// `Normal`
  String get normal {
    return Intl.message('Normal', name: 'normal', desc: '', args: []);
  }

  /// `Timer`
  String get timer {
    return Intl.message('Timer', name: 'timer', desc: '', args: []);
  }

  /// `Do you exit?`
  String get doYouExit {
    return Intl.message('Do you exit?', name: 'doYouExit', desc: '', args: []);
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Management password`
  String get managementPassword {
    return Intl.message(
      'Management password',
      name: 'managementPassword',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message('Call', name: 'call', desc: '', args: []);
  }

  /// `Return to initial settings`
  String get reset {
    return Intl.message(
      'Return to initial settings',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure return to initial settings?`
  String get sureReset {
    return Intl.message(
      'Are you sure return to initial settings?',
      name: 'sureReset',
      desc: '',
      args: [],
    );
  }

  /// `This code is disabled on this device`
  String get codIsDisable {
    return Intl.message(
      'This code is disabled on this device',
      name: 'codIsDisable',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enterPassword {
    return Intl.message(
      'Enter password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Admin password`
  String get adminPassword {
    return Intl.message(
      'Admin password',
      name: 'adminPassword',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Application login password`
  String get applicationLoginPassword {
    return Intl.message(
      'Application login password',
      name: 'applicationLoginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message('Active', name: 'active', desc: '', args: []);
  }

  /// `In active`
  String get inactive {
    return Intl.message('In active', name: 'inactive', desc: '', args: []);
  }

  /// `Biometric enable`
  String get biometricEnable {
    return Intl.message(
      'Biometric enable',
      name: 'biometricEnable',
      desc: '',
      args: [],
    );
  }

  /// `Login password enable`
  String get loginPasswordEnable {
    return Intl.message(
      'Login password enable',
      name: 'loginPasswordEnable',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `New location`
  String get newLocation {
    return Intl.message(
      'New location',
      name: 'newLocation',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `The maximum number of part choices is {number}`
  String theMaximumNumberOfPartChoicesIs(Object number) {
    return Intl.message(
      'The maximum number of part choices is $number',
      name: 'theMaximumNumberOfPartChoicesIs',
      desc: '',
      args: [number],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message('Ok', name: 'ok', desc: '', args: []);
  }

  /// `On`
  String get on {
    return Intl.message('On', name: 'on', desc: '', args: []);
  }

  /// `Off`
  String get off {
    return Intl.message('Off', name: 'off', desc: '', args: []);
  }

  // skipped getter for the 'momentary ' key

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Scan your finger for authentication`
  String get scanYourFingerForAuthentication {
    return Intl.message(
      'Scan your finger for authentication',
      name: 'scanYourFingerForAuthentication',
      desc: '',
      args: [],
    );
  }

  /// `Password is Wrong`
  String get wrongPassword {
    return Intl.message(
      'Password is Wrong',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Insert`
  String get insert {
    return Intl.message('Insert', name: 'insert', desc: '', args: []);
  }

  /// `Projector`
  String get projector {
    return Intl.message('Projector', name: 'projector', desc: '', args: []);
  }

  /// `Part set`
  String get partSet {
    return Intl.message('Part set', name: 'partSet', desc: '', args: []);
  }

  /// `Part set 1`
  String get partSet1 {
    return Intl.message('Part set 1', name: 'partSet1', desc: '', args: []);
  }

  /// `Part set 2`
  String get partSet2 {
    return Intl.message('Part set 2', name: 'partSet2', desc: '', args: []);
  }

  /// `On part {number}`
  String onP(Object number) {
    return Intl.message(
      'On part $number',
      name: 'onP',
      desc: '',
      args: [number],
    );
  }

  /// `On part 1`
  String get onP1 {
    return Intl.message('On part 1', name: 'onP1', desc: '', args: []);
  }

  /// `On part 2`
  String get onP2 {
    return Intl.message('On part 2', name: 'onP2', desc: '', args: []);
  }

  /// `Off part {number}`
  String offP(Object number) {
    return Intl.message(
      'Off part $number',
      name: 'offP',
      desc: '',
      args: [number],
    );
  }

  /// `Off part 1`
  String get offP1 {
    return Intl.message('Off part 1', name: 'offP1', desc: '', args: []);
  }

  /// `Off part 2`
  String get offP2 {
    return Intl.message('Off part 2', name: 'offP2', desc: '', args: []);
  }

  /// `Version`
  String get version {
    return Intl.message('Version', name: 'version', desc: '', args: []);
  }

  /// `Change`
  String get change {
    return Intl.message('Change', name: 'change', desc: '', args: []);
  }

  /// `New`
  String get news {
    return Intl.message('New', name: 'news', desc: '', args: []);
  }

  /// `Delete location`
  String get deleteLocation {
    return Intl.message(
      'Delete location',
      name: 'deleteLocation',
      desc: '',
      args: [],
    );
  }

  /// `Please select device model`
  String get pleaseSelectDeviceModel {
    return Intl.message(
      'Please select device model',
      name: 'pleaseSelectDeviceModel',
      desc: '',
      args: [],
    );
  }

  /// `Please enter memory`
  String get pleaseEnterMemory {
    return Intl.message(
      'Please enter memory',
      name: 'pleaseEnterMemory',
      desc: '',
      args: [],
    );
  }

  /// `Phone is wrong`
  String get phoneIsWrong {
    return Intl.message(
      'Phone is wrong',
      name: 'phoneIsWrong',
      desc: '',
      args: [],
    );
  }

  /// `Please enter simCard number`
  String get pleaseEnterSimCardNumber {
    return Intl.message(
      'Please enter simCard number',
      name: 'pleaseEnterSimCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `MCI`
  String get mci {
    return Intl.message('MCI', name: 'mci', desc: '', args: []);
  }

  /// `Irancell`
  String get irancell {
    return Intl.message('Irancell', name: 'irancell', desc: '', args: []);
  }

  /// `Persian`
  String get persian {
    return Intl.message('Persian', name: 'persian', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Remote`
  String get remote {
    return Intl.message('Remote', name: 'remote', desc: '', args: []);
  }

  /// `Zoon`
  String get zoon {
    return Intl.message('Zoon', name: 'zoon', desc: '', args: []);
  }

  /// `Please enter name of installation location`
  String get pleaseEnterNameOfInstallationLocation {
    return Intl.message(
      'Please enter name of installation location',
      name: 'pleaseEnterNameOfInstallationLocation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter device model`
  String get pleaseEnterDeviceModel {
    return Intl.message(
      'Please enter device model',
      name: 'pleaseEnterDeviceModel',
      desc: '',
      args: [],
    );
  }

  /// `Please enter device password`
  String get pleaseEnterDevicePassword {
    return Intl.message(
      'Please enter device password',
      name: 'pleaseEnterDevicePassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter SimCard number`
  String get pleaseEnterSIMCardNumber {
    return Intl.message(
      'Please enter SimCard number',
      name: 'pleaseEnterSIMCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter SimCard type`
  String get pleaseEnterSIMCardType {
    return Intl.message(
      'Please enter SimCard type',
      name: 'pleaseEnterSIMCardType',
      desc: '',
      args: [],
    );
  }

  /// `Selected installation location`
  String get selectedInstallationLocation {
    return Intl.message(
      'Selected installation location',
      name: 'selectedInstallationLocation',
      desc: '',
      args: [],
    );
  }

  /// `SimCard number`
  String get simCardNumber {
    return Intl.message(
      'SimCard number',
      name: 'simCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message('Show', name: 'show', desc: '', args: []);
  }

  /// `Setup call memory and SMS`
  String get setupCallMemoryAndSMS {
    return Intl.message(
      'Setup call memory and SMS',
      name: 'setupCallMemoryAndSMS',
      desc: '',
      args: [],
    );
  }

  /// `SimCard type`
  String get simCardType {
    return Intl.message(
      'SimCard type',
      name: 'simCardType',
      desc: '',
      args: [],
    );
  }

  /// `Setup stimulation type`
  String get setupStimulationType {
    return Intl.message(
      'Setup stimulation type',
      name: 'setupStimulationType',
      desc: '',
      args: [],
    );
  }

  /// `Setup language SMS`
  String get setupLanguageSMS {
    return Intl.message(
      'Setup language SMS',
      name: 'setupLanguageSMS',
      desc: '',
      args: [],
    );
  }

  /// `Surface`
  String get surface {
    return Intl.message('Surface', name: 'surface', desc: '', args: []);
  }

  /// `Sim card`
  String get simCard {
    return Intl.message('Sim card', name: 'simCard', desc: '', args: []);
  }

  /// `Set alarm time`
  String get setAlarmTime {
    return Intl.message(
      'Set alarm time',
      name: 'setAlarmTime',
      desc: '',
      args: [],
    );
  }

  /// `Set arrival time`
  String get setArrivalTime {
    return Intl.message(
      'Set arrival time',
      name: 'setArrivalTime',
      desc: '',
      args: [],
    );
  }

  /// `30 seconds`
  String get seconds30 {
    return Intl.message('30 seconds', name: 'seconds30', desc: '', args: []);
  }

  /// `60 seconds`
  String get seconds60 {
    return Intl.message('60 seconds', name: 'seconds60', desc: '', args: []);
  }

  /// `Set departure time`
  String get setDepartureTime {
    return Intl.message(
      'Set departure time',
      name: 'setDepartureTime',
      desc: '',
      args: [],
    );
  }

  /// `SMS`
  String get sms {
    return Intl.message('SMS', name: 'sms', desc: '', args: []);
  }

  /// `Select your zone number`
  String get selectYourZoneNumber {
    return Intl.message(
      'Select your zone number',
      name: 'selectYourZoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of the remote`
  String get enterTheNameOfTheRemote {
    return Intl.message(
      'Enter the name of the remote',
      name: 'enterTheNameOfTheRemote',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get passwordChangedSuccessfully {
    return Intl.message(
      'Password changed successfully',
      name: 'passwordChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `The password must be at least 3 characters`
  String get thePasswordMustBeAtLeast3Characters {
    return Intl.message(
      'The password must be at least 3 characters',
      name: 'thePasswordMustBeAtLeast3Characters',
      desc: '',
      args: [],
    );
  }

  /// `Single siren setting`
  String get singleSirenSetting {
    return Intl.message(
      'Single siren setting',
      name: 'singleSirenSetting',
      desc: '',
      args: [],
    );
  }

  /// `Set external speaker mute alert`
  String get setExternalSpeakerMuteAlert {
    return Intl.message(
      'Set external speaker mute alert',
      name: 'setExternalSpeakerMuteAlert',
      desc: '',
      args: [],
    );
  }

  /// `Confidential on and off report`
  String get confidentialOnAndOffReport {
    return Intl.message(
      'Confidential on and off report',
      name: 'confidentialOnAndOffReport',
      desc: '',
      args: [],
    );
  }

  /// `Set to send simCard charge report`
  String get setToSendSimCardChargeReport {
    return Intl.message(
      'Set to send simCard charge report',
      name: 'setToSendSimCardChargeReport',
      desc: '',
      args: [],
    );
  }

  /// `Set to send SMS receiving reports`
  String get setToSendSmsReceivingReports {
    return Intl.message(
      'Set to send SMS receiving reports',
      name: 'setToSendSmsReceivingReports',
      desc: '',
      args: [],
    );
  }

  /// `Sim card inquiry`
  String get simCardInquiry {
    return Intl.message(
      'Sim card inquiry',
      name: 'simCardInquiry',
      desc: '',
      args: [],
    );
  }

  /// `Send message`
  String get sendMessage {
    return Intl.message(
      'Send message',
      name: 'sendMessage',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `Please select the part you want`
  String get pleaseSelectThePartYouWant {
    return Intl.message(
      'Please select the part you want',
      name: 'pleaseSelectThePartYouWant',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hide {
    return Intl.message('Hide', name: 'hide', desc: '', args: []);
  }

  /// `Smart`
  String get smart {
    return Intl.message('Smart', name: 'smart', desc: '', args: []);
  }

  /// `Change the menu password`
  String get changeTheMenuPassword {
    return Intl.message(
      'Change the menu password',
      name: 'changeTheMenuPassword',
      desc: '',
      args: [],
    );
  }

  /// `Change the burglar alarm key pad password`
  String get changeTheBurglarAlarmPassword {
    return Intl.message(
      'Change the burglar alarm key pad password',
      name: 'changeTheBurglarAlarmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Fire alarm`
  String get fireAlarm {
    return Intl.message('Fire alarm', name: 'fireAlarm', desc: '', args: []);
  }

  /// `24-hour 2-stage zone`
  String get zone24Hour2Stage {
    return Intl.message(
      '24-hour 2-stage zone',
      name: 'zone24Hour2Stage',
      desc: '',
      args: [],
    );
  }

  /// `SimCard charge`
  String get simCardCharge {
    return Intl.message(
      'SimCard charge',
      name: 'simCardCharge',
      desc: '',
      args: [],
    );
  }

  /// `Stop dialing`
  String get stopDialing {
    return Intl.message(
      'Stop dialing',
      name: 'stopDialing',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message('Setting', name: 'setting', desc: '', args: []);
  }

  /// `24 hour`
  String get hour24 {
    return Intl.message('24 hour', name: 'hour24', desc: '', args: []);
  }

  /// `Parting`
  String get parting {
    return Intl.message('Parting', name: 'parting', desc: '', args: []);
  }

  /// `Chaim`
  String get chaim {
    return Intl.message('Chaim', name: 'chaim', desc: '', args: []);
  }

  /// `Outputs`
  String get outputs {
    return Intl.message('Outputs', name: 'outputs', desc: '', args: []);
  }

  /// `Device settings`
  String get deviceSettings {
    return Intl.message(
      'Device settings',
      name: 'deviceSettings',
      desc: '',
      args: [],
    );
  }

  /// `Remote name`
  String get remoteName {
    return Intl.message('Remote name', name: 'remoteName', desc: '', args: []);
  }

  /// `Zone name`
  String get zoneName {
    return Intl.message('Zone name', name: 'zoneName', desc: '', args: []);
  }

  /// `SIM card Charge`
  String get chargeCode {
    return Intl.message(
      'SIM card Charge',
      name: 'chargeCode',
      desc: '',
      args: [],
    );
  }

  /// `On remember`
  String get onRemember {
    return Intl.message('On remember', name: 'onRemember', desc: '', args: []);
  }

  /// `Send number input dial`
  String get sendNumberInputDial {
    return Intl.message(
      'Send number input dial',
      name: 'sendNumberInputDial',
      desc: '',
      args: [],
    );
  }

  /// `Output control by silent`
  String get outputControlBySilent {
    return Intl.message(
      'Output control by silent',
      name: 'outputControlBySilent',
      desc: '',
      args: [],
    );
  }

  /// `Off report by dial`
  String get offReportByDial {
    return Intl.message(
      'Off report by dial',
      name: 'offReportByDial',
      desc: '',
      args: [],
    );
  }

  /// `Silent function`
  String get silentFunction {
    return Intl.message(
      'Silent function',
      name: 'silentFunction',
      desc: '',
      args: [],
    );
  }

  /// `Call admin by phone`
  String get callAdminByPhone {
    return Intl.message(
      'Call admin by phone',
      name: 'callAdminByPhone',
      desc: '',
      args: [],
    );
  }

  /// `Output dor open`
  String get outputDorOpen {
    return Intl.message(
      'Output dor open',
      name: 'outputDorOpen',
      desc: '',
      args: [],
    );
  }

  /// `Off system 2 step`
  String get offSystem2step {
    return Intl.message(
      'Off system 2 step',
      name: 'offSystem2step',
      desc: '',
      args: [],
    );
  }

  /// `Remote control cid`
  String get remoteControlCid {
    return Intl.message(
      'Remote control cid',
      name: 'remoteControlCid',
      desc: '',
      args: [],
    );
  }

  /// `Main alarm control`
  String get setVolumeMainAlarm {
    return Intl.message(
      'Main alarm control',
      name: 'setVolumeMainAlarm',
      desc: '',
      args: [],
    );
  }

  /// `Aux report`
  String get auxReport {
    return Intl.message('Aux report', name: 'auxReport', desc: '', args: []);
  }

  /// `Change password central`
  String get changePasswordCentral {
    return Intl.message(
      'Change password central',
      name: 'changePasswordCentral',
      desc: '',
      args: [],
    );
  }

  /// `On off dialler`
  String get onOffDialler {
    return Intl.message(
      'On off dialler',
      name: 'onOffDialler',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Output name`
  String get pleaseEnterOutputName {
    return Intl.message(
      'Please Enter Output name',
      name: 'pleaseEnterOutputName',
      desc: '',
      args: [],
    );
  }

  /// `Enter remote name`
  String get enterRemoteName {
    return Intl.message(
      'Enter remote name',
      name: 'enterRemoteName',
      desc: '',
      args: [],
    );
  }

  /// `Enter zone name`
  String get enterZoneName {
    return Intl.message(
      'Enter zone name',
      name: 'enterZoneName',
      desc: '',
      args: [],
    );
  }

  /// `Rename the remote`
  String get renameTheRemote {
    return Intl.message(
      'Rename the remote',
      name: 'renameTheRemote',
      desc: '',
      args: [],
    );
  }

  /// `Rename the zone`
  String get renameTheZone {
    return Intl.message(
      'Rename the zone',
      name: 'renameTheZone',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get enterNewPassword {
    return Intl.message(
      'Enter new password',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Change device password`
  String get changeDevicePassword {
    return Intl.message(
      'Change device password',
      name: 'changeDevicePassword',
      desc: '',
      args: [],
    );
  }

  /// `Set check-in and check-out time`
  String get setCheckInAndCheckOutTime {
    return Intl.message(
      'Set check-in and check-out time',
      name: 'setCheckInAndCheckOutTime',
      desc: '',
      args: [],
    );
  }

  /// `Set power off and on alert`
  String get setPowerOffAndOnAlert {
    return Intl.message(
      'Set power off and on alert',
      name: 'setPowerOffAndOnAlert',
      desc: '',
      args: [],
    );
  }

  /// `Charge report after each stimulation`
  String get chargeReportAfterEachStimulation {
    return Intl.message(
      'Charge report after each stimulation',
      name: 'chargeReportAfterEachStimulation',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get selected {
    return Intl.message('Selected', name: 'selected', desc: '', args: []);
  }

  /// `Remote silent button function`
  String get remoteSilentButtonFunction {
    return Intl.message(
      'Remote silent button function',
      name: 'remoteSilentButtonFunction',
      desc: '',
      args: [],
    );
  }

  /// `Contact the manager through a fixed line`
  String get contactTheManagerThroughAFixedLine {
    return Intl.message(
      'Contact the manager through a fixed line',
      name: 'contactTheManagerThroughAFixedLine',
      desc: '',
      args: [],
    );
  }

  /// `Fixed line dialing type`
  String get fixedLineDialingType {
    return Intl.message(
      'Fixed line dialing type',
      name: 'fixedLineDialingType',
      desc: '',
      args: [],
    );
  }

  /// `Turn the dialer on and off`
  String get turnTheDialerOnAndOff {
    return Intl.message(
      'Turn the dialer on and off',
      name: 'turnTheDialerOnAndOff',
      desc: '',
      args: [],
    );
  }

  /// `Just admin`
  String get justAdmin {
    return Intl.message('Just admin', name: 'justAdmin', desc: '', args: []);
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Ton`
  String get ton {
    return Intl.message('Ton', name: 'ton', desc: '', args: []);
  }

  /// `Pulse`
  String get pulse {
    return Intl.message('Pulse', name: 'pulse', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Sms sent successfully`
  String get smsSentSuccessfully {
    return Intl.message(
      'Sms sent successfully',
      name: 'smsSentSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Output control 2 with mute button`
  String get outputControl2WithMuteButton {
    return Intl.message(
      'Output control 2 with mute button',
      name: 'outputControl2WithMuteButton',
      desc: '',
      args: [],
    );
  }

  /// `Change zone name`
  String get changeZoneName {
    return Intl.message(
      'Change zone name',
      name: 'changeZoneName',
      desc: '',
      args: [],
    );
  }

  /// `Name is not valid`
  String get nameIsNotValid {
    return Intl.message(
      'Name is not valid',
      name: 'nameIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Turn on silently`
  String get turnOnSilently {
    return Intl.message(
      'Turn on silently',
      name: 'turnOnSilently',
      desc: '',
      args: [],
    );
  }

  /// `Semi-activation`
  String get semiActivation {
    return Intl.message(
      'Semi-activation',
      name: 'semiActivation',
      desc: '',
      args: [],
    );
  }

  /// `General settings`
  String get generalSettings {
    return Intl.message(
      'General settings',
      name: 'generalSettings',
      desc: '',
      args: [],
    );
  }

  /// `Send incoming call number`
  String get sendIncomingCallNumber {
    return Intl.message(
      'Send incoming call number',
      name: 'sendIncomingCallNumber',
      desc: '',
      args: [],
    );
  }

  /// `Report a power outage by calling`
  String get reportAPowerOutageByCalling {
    return Intl.message(
      'Report a power outage by calling',
      name: 'reportAPowerOutageByCalling',
      desc: '',
      args: [],
    );
  }

  /// `Remote control by contact`
  String get remoteControlByContact {
    return Intl.message(
      'Remote control by contact',
      name: 'remoteControlByContact',
      desc: '',
      args: [],
    );
  }

  /// `Door opener output`
  String get doorOpenerOutput {
    return Intl.message(
      'Door opener output',
      name: 'doorOpenerOutput',
      desc: '',
      args: [],
    );
  }

  /// `Device shutdown report`
  String get deviceShutdownReport {
    return Intl.message(
      'Device shutdown report',
      name: 'deviceShutdownReport',
      desc: '',
      args: [],
    );
  }

  /// `Two-stage shutdown of the device (double protection)`
  String get twoStageShutdownOfTheDevice {
    return Intl.message(
      'Two-stage shutdown of the device (double protection)',
      name: 'twoStageShutdownOfTheDevice',
      desc: '',
      args: [],
    );
  }

  /// `<![CDATA[\n<p>پس از نصب نرم افزار، ابتدا باید اطلاعات مربوط به دستگاه و محل نصب را از طریق قسمت تنظیمات محل نصب در نرم افزار ذخیره کنید. پس از ذخیره، نام محل نصب بالای صفحه اصلی نمایش داده می شود. </p>\n<p>در صورتی که از سیستم حفاظتی  Unitek در محل دیگری نیز استفاده می کنید، با اضافه کردن این محل از طریق نرم افزار، سیستم های حفاظتی ذخیره شده را کنترل نمائید.</p>\n `
  String get help1 {
    return Intl.message(
      '<![CDATA[\n<p>پس از نصب نرم افزار، ابتدا باید اطلاعات مربوط به دستگاه و محل نصب را از طریق قسمت تنظیمات محل نصب در نرم افزار ذخیره کنید. پس از ذخیره، نام محل نصب بالای صفحه اصلی نمایش داده می شود. </p>\n<p>در صورتی که از سیستم حفاظتی  Unitek در محل دیگری نیز استفاده می کنید، با اضافه کردن این محل از طریق نرم افزار، سیستم های حفاظتی ذخیره شده را کنترل نمائید.</p>\n ',
      name: 'help1',
      desc: '',
      args: [],
    );
  }

  /// `<![CDATA[\n\n<p>قبل از ارسال دستور، حتما بررسی کنید محل مناسب انتخاب شده باشد. (پیشنهاد می کنیم که از رمز مشابه برای دستگاه های حفاظتی خود استفاده نکنید).</p>\n`
  String get help2 {
    return Intl.message(
      '<![CDATA[\n\n<p>قبل از ارسال دستور، حتما بررسی کنید محل مناسب انتخاب شده باشد. (پیشنهاد می کنیم که از رمز مشابه برای دستگاه های حفاظتی خود استفاده نکنید).</p>\n',
      name: 'help2',
      desc: '',
      args: [],
    );
  }

  /// `<![CDATA[\n\n<p>راهنمای مربوط به هر صفحه از نرم افزار با کلیک کردن بر روی آیکون i بالای همان صفحه نمایش داده می شود.</p>\n\n\n`
  String get help3 {
    return Intl.message(
      '<![CDATA[\n\n<p>راهنمای مربوط به هر صفحه از نرم افزار با کلیک کردن بر روی آیکون i بالای همان صفحه نمایش داده می شود.</p>\n\n\n',
      name: 'help3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fa'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
