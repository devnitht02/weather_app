import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude = 6.9151861;
  late double longitude = 79.8632569;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
