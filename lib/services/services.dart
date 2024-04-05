import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maushamapp/Model/weatherModel.dart';

class WeatherService {
  Dio dio = Dio();

  Future<WeatherModel> getWeather() async {
    var response = await dio.get(
        "https://api.weatherapi.com/v1/current.json?key=d0ef7e4071f041d48d990823242803&q=Bhaktapur&aqi=no");

    if (response.statusCode == 200) {
      var Weatherdata = WeatherModel.fromJson(response.data);
      return Weatherdata;
    } else {
      throw Exception("Error Occured");
    }
  }
}

final weatherServiceProvider =
    Provider<WeatherService>((ref) => WeatherService());

final weatherProvider = FutureProvider.autoDispose<WeatherModel>((ref) async {
  final weatherService = ref.read(weatherServiceProvider);
  return weatherService.getWeather();
});
