import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maushamapp/Model/currentforecast.dart';
import 'package:maushamapp/Model/weatherModel.dart';

class WeatherService {
  Dio dio = Dio();
  final String apiKey = "d0ef7e4071f041d48d990823242803";
  final String baseUrl = "http://api.weatherapi.com/v1/forecast.json";
  final String searchUrl = "https://api.weatherapi.com/v1/search.json";

//   Future<WeatherModel> getWeather() async {
//     var response = await dio.get(
//         "https://api.weatherapi.com/v1/current.json?key=d0ef7e4071f041d48d990823242803&q=Bhaktapur&aqi=no");

//     if (response.statusCode == 200) {
//       var Weatherdata = WeatherModel.fromJson(response.data);
//       return Weatherdata;
//     } else {
//       throw Exception("Error Occured");
//     }
//   }

  Future<CurrentForecast> getCurrentWeather(String city) async {
    final url = '$baseUrl?key=$apiKey&q=$city&days=1&aqi=no&alerts=no';

    var response = await dio.get(url);

    if (response.statusCode == 200) {
      return CurrentForecast.fromJson(response.data);
    } else {
      throw Exception("Error has occured");
    }
  }

  Future<CurrentForecast> get7daysWeather(String city) async {
    final url = '$baseUrl?key=$apiKey&q=$city&days=7&aqi=no&alerts=no';

    var response = await dio.get(url);

    if (response.statusCode == 200) {
      return CurrentForecast.fromJson(response.data);
    } else {
      throw Exception("Error has occured");
    }
  }

  Future<List<dynamic>?> citySuggestion(String query) async {
    final url = '$searchUrl?key=$apiKey&q=$query';

    var response = await dio.get(url);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
}

final weatherServiceProvider =
    Provider<WeatherService>((ref) => WeatherService());

final weatherProvider =
    FutureProvider.family<CurrentForecast, String>((ref, city) async {
  final weatherService = ref.read(weatherServiceProvider);
  return await weatherService.getCurrentWeather(city);
});

final sevendaysWeatherProvider =
    FutureProvider.family<CurrentForecast, String>((ref, city) async {
  final weatherService = ref.read(weatherServiceProvider);
  return await weatherService.get7daysWeather(city);
});

// final searchProvider =
//     FutureProvider.family<List<dynamic>?, String>((ref, query) {
//   final weatherService = ref.read(weatherServiceProvider);
//   return weatherService.citySuggestion(query);
// });
