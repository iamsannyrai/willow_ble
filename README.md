Willow Wifi package used to connect willow hub to wifi and mqtt protocol

Usage:

1. Initialize WillowBle
```dart
  final willowBle = WillowBle();
  willowBle.init(ble)
```
where 'ble' is an instance of FlutterReactiveBle from flutter_reactive_ble

Now you can access to 'hubInteractor' and 'sensorInteractor' with
```dart
  willowBle.hubInteractor
  
  willowBle.sensorInteractor
```


