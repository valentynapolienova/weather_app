import 'package:geolocator/geolocator.dart';

class LocationService {
  /// Gets the current city name based on the user's location.
  Future<String> getCurrentCity() async {
    // Check location services.
    if (!await Geolocator.isLocationServiceEnabled()) {
      throw Exception('Location services are disabled.');
    }

    // Check permissions.
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied) {
      throw Exception('Location permissions are denied.');
    }
    if (permission == LocationPermission.deniedForever) {
      throw Exception(
        'Location permissions are permanently denied. Please enable them in Settings.',
      );
    }

    // Get current position.

    // Reverse geocode to get city name.

    throw UnimplementedError('getCurrentCity is not implemented yet.');
  }
}
