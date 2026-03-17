import '../models/weather_model.dart';

class WeatherService {
  WeatherService(this.apiKey);

  final String apiKey;

  // Base URL for OpenWeatherMap current weather.
  static const _baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  Weather getWeatherByCity(String city) {
    // TODO: Implement this method to fetch weather data by city name.
    throw UnimplementedError('getWeatherByCity is not implemented yet.');
  }
}
