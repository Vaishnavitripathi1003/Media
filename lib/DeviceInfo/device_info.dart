

import 'package:device_info/device_info.dart';

class Device_Info{
  Future<String> getDeviceId() async {
    var deviceId = 'Unknown';
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    try {
      if (/*Platform.isAndroid*/true) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        deviceId = androidInfo.androidId;
        print('Running on ${androidInfo.model}');
        print('Device_ID is  ${ androidInfo.androidId}');
        print('board ${androidInfo.board}');
        print('bramd is  ${ androidInfo.brand}');
        print('Bootloader on ${androidInfo.bootloader}');
        print('display is  ${ androidInfo.display}');
        print('Fingerprint on ${androidInfo.fingerprint}');
        print('systemFeatures is  ${ androidInfo.systemFeatures}');
        print('device is  ${ androidInfo.device}');
        print('hardware on ${androidInfo.hardware}');
        print('host is  ${ androidInfo.host}');
        print('isPhysicalDevice on ${androidInfo.isPhysicalDevice}');

        print('device is  ${ androidInfo.manufacturer}');
        print('product on ${androidInfo.product}');
        print('tags is  ${ androidInfo.tags}');
        print('type on ${androidInfo.type}');
        print('id is  ${ androidInfo.id}');
        print('device is  ${ androidInfo.version}');
      }/* else if (Platform.isIOS) {
        deviceInfo.iosInfo.then((IosDeviceInfo info) {
          deviceId = info.identifierForVendor; // iOS identifierForVendor
        });
      }*/
    } catch (e) {
      print("Error getting device ID: $e");
    }

    return deviceId;
  }
}