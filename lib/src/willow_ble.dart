import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:willow_ble/willow_ble.dart';

class WillowBle {
  static final WillowBle _willowBle = WillowBle._internal();

  factory WillowBle() {
    return _willowBle;
  }

  WillowBle._internal();

  late WillowHubInteractor hubInteractor;
  late WillowSensorInteractor sensorInteractor;
  late WillowBLEScanner willowBLEScanner;
  late WillowBleConnectionManager willowBleConnectionManager;

  late Stream<BleStatus> statusStream;

  /// init function initializes hub and sensor interactor
  void init() {
    final FlutterReactiveBle ble = FlutterReactiveBle();
    hubInteractor = WillowHubInteractor(ble);
    sensorInteractor = WillowSensorInteractor(ble: ble);
    willowBLEScanner = WillowBLEScanner(ble);
    willowBleConnectionManager = WillowBleConnectionManager(ble);
    statusStream = ble.statusStream;
  }
}
