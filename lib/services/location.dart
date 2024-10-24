import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;
  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.low,
  );

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
