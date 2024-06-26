// // To parse this JSON data, do
// //
// //     final currentForecast = currentForecastFromJson(jsonString);

// import 'dart:convert';

// CurrentForecast currentForecastFromJson(String str) =>
//     CurrentForecast.fromJson(json.decode(str));

// String currentForecastToJson(CurrentForecast data) =>
//     json.encode(data.toJson());

// class CurrentForecast {
//   Location location;
//   Current current;
//   Forecast forecast;

//   CurrentForecast({
//     required this.location,
//     required this.current,
//     required this.forecast,
//   });

//   CurrentForecast copyWith({
//     Location? location,
//     Current? current,
//     Forecast? forecast,
//   }) =>
//       CurrentForecast(
//         location: location ?? this.location,
//         current: current ?? this.current,
//         forecast: forecast ?? this.forecast,
//       );

//   factory CurrentForecast.fromJson(Map<String, dynamic> json) =>
//       CurrentForecast(
//         location: Location.fromJson(json["location"]),
//         current: Current.fromJson(json["current"]),
//         forecast: Forecast.fromJson(json["forecast"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "location": location.toJson(),
//         "current": current.toJson(),
//         "forecast": forecast.toJson(),
//       };
// }

// class Current {
//   int lastUpdatedEpoch;
//   String lastUpdated;
//   int tempC;
//   int tempF;
//   int isDay;
//   Condition condition;
//   double windMph;
//   double windKph;
//   int windDegree;
//   String windDir;
//   int pressureMb;
//   double pressureIn;
//   int precipMm;
//   int precipIn;
//   int humidity;
//   int cloud;
//   double feelslikeC;
//   double feelslikeF;
//   int visKm;
//   int visMiles;
//   int uv;
//   int gustMph;
//   double gustKph;

//   Current({
//     required this.lastUpdatedEpoch,
//     required this.lastUpdated,
//     required this.tempC,
//     required this.tempF,
//     required this.isDay,
//     required this.condition,
//     required this.windMph,
//     required this.windKph,
//     required this.windDegree,
//     required this.windDir,
//     required this.pressureMb,
//     required this.pressureIn,
//     required this.precipMm,
//     required this.precipIn,
//     required this.humidity,
//     required this.cloud,
//     required this.feelslikeC,
//     required this.feelslikeF,
//     required this.visKm,
//     required this.visMiles,
//     required this.uv,
//     required this.gustMph,
//     required this.gustKph,
//   });

//   Current copyWith({
//     int? lastUpdatedEpoch,
//     String? lastUpdated,
//     int? tempC,
//     int? tempF,
//     int? isDay,
//     Condition? condition,
//     double? windMph,
//     double? windKph,
//     int? windDegree,
//     String? windDir,
//     int? pressureMb,
//     double? pressureIn,
//     int? precipMm,
//     int? precipIn,
//     int? humidity,
//     int? cloud,
//     double? feelslikeC,
//     double? feelslikeF,
//     int? visKm,
//     int? visMiles,
//     int? uv,
//     int? gustMph,
//     double? gustKph,
//   }) =>
//       Current(
//         lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
//         lastUpdated: lastUpdated ?? this.lastUpdated,
//         tempC: tempC ?? this.tempC,
//         tempF: tempF ?? this.tempF,
//         isDay: isDay ?? this.isDay,
//         condition: condition ?? this.condition,
//         windMph: windMph ?? this.windMph,
//         windKph: windKph ?? this.windKph,
//         windDegree: windDegree ?? this.windDegree,
//         windDir: windDir ?? this.windDir,
//         pressureMb: pressureMb ?? this.pressureMb,
//         pressureIn: pressureIn ?? this.pressureIn,
//         precipMm: precipMm ?? this.precipMm,
//         precipIn: precipIn ?? this.precipIn,
//         humidity: humidity ?? this.humidity,
//         cloud: cloud ?? this.cloud,
//         feelslikeC: feelslikeC ?? this.feelslikeC,
//         feelslikeF: feelslikeF ?? this.feelslikeF,
//         visKm: visKm ?? this.visKm,
//         visMiles: visMiles ?? this.visMiles,
//         uv: uv ?? this.uv,
//         gustMph: gustMph ?? this.gustMph,
//         gustKph: gustKph ?? this.gustKph,
//       );

//   factory Current.fromJson(Map<String, dynamic> json) => Current(
//         lastUpdatedEpoch: json["last_updated_epoch"],
//         lastUpdated: json["last_updated"],
//         tempC: json["temp_c"],
//         tempF: json["temp_f"],
//         isDay: json["is_day"],
//         condition: Condition.fromJson(json["condition"]),
//         windMph: json["wind_mph"]?.toDouble(),
//         windKph: json["wind_kph"]?.toDouble(),
//         windDegree: json["wind_degree"],
//         windDir: json["wind_dir"],
//         pressureMb: json["pressure_mb"],
//         pressureIn: json["pressure_in"]?.toDouble(),
//         precipMm: json["precip_mm"],
//         precipIn: json["precip_in"],
//         humidity: json["humidity"],
//         cloud: json["cloud"],
//         feelslikeC: json["feelslike_c"]?.toDouble(),
//         feelslikeF: json["feelslike_f"]?.toDouble(),
//         visKm: json["vis_km"],
//         visMiles: json["vis_miles"],
//         uv: json["uv"],
//         gustMph: json["gust_mph"],
//         gustKph: json["gust_kph"]?.toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "last_updated_epoch": lastUpdatedEpoch,
//         "last_updated": lastUpdated,
//         "temp_c": tempC,
//         "temp_f": tempF,
//         "is_day": isDay,
//         "condition": condition.toJson(),
//         "wind_mph": windMph,
//         "wind_kph": windKph,
//         "wind_degree": windDegree,
//         "wind_dir": windDir,
//         "pressure_mb": pressureMb,
//         "pressure_in": pressureIn,
//         "precip_mm": precipMm,
//         "precip_in": precipIn,
//         "humidity": humidity,
//         "cloud": cloud,
//         "feelslike_c": feelslikeC,
//         "feelslike_f": feelslikeF,
//         "vis_km": visKm,
//         "vis_miles": visMiles,
//         "uv": uv,
//         "gust_mph": gustMph,
//         "gust_kph": gustKph,
//       };
// }

// class Condition {
//   Text text;
//   String icon;
//   int code;

//   Condition({
//     required this.text,
//     required this.icon,
//     required this.code,
//   });

//   Condition copyWith({
//     Text? text,
//     String? icon,
//     int? code,
//   }) =>
//       Condition(
//         text: text ?? this.text,
//         icon: icon ?? this.icon,
//         code: code ?? this.code,
//       );

//   factory Condition.fromJson(Map<String, dynamic> json) => Condition(
//         text: textValues.map[json["text"]]!,
//         icon: json["icon"],
//         code: json["code"],
//       );

//   Map<String, dynamic> toJson() => {
//         "text": textValues.reverse[text],
//         "icon": icon,
//         "code": code,
//       };
// }

// enum Text {
//   CLEAR,
//   PARTLY_CLOUDY,
//   PATCHY_LIGHT_DRIZZLE,
//   PATCHY_RAIN_NEARBY,
//   TEXT_PARTLY_CLOUDY
// }

// final textValues = EnumValues({
//   "Clear ": Text.CLEAR,
//   "Partly cloudy": Text.PARTLY_CLOUDY,
//   "Patchy light drizzle": Text.PATCHY_LIGHT_DRIZZLE,
//   "Patchy rain nearby": Text.PATCHY_RAIN_NEARBY,
//   "Partly Cloudy ": Text.TEXT_PARTLY_CLOUDY
// });

// class Forecast {
//   List<Forecastday> forecastday;

//   Forecast({
//     required this.forecastday,
//   });

//   Forecast copyWith({
//     List<Forecastday>? forecastday,
//   }) =>
//       Forecast(
//         forecastday: forecastday ?? this.forecastday,
//       );

//   factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
//         forecastday: List<Forecastday>.from(
//             json["forecastday"].map((x) => Forecastday.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "forecastday": List<dynamic>.from(forecastday.map((x) => x.toJson())),
//       };
// }

// class Forecastday {
//   DateTime date;
//   int dateEpoch;
//   Day day;
//   Astro astro;
//   List<Hour> hour;

//   Forecastday({
//     required this.date,
//     required this.dateEpoch,
//     required this.day,
//     required this.astro,
//     required this.hour,
//   });

//   Forecastday copyWith({
//     DateTime? date,
//     int? dateEpoch,
//     Day? day,
//     Astro? astro,
//     List<Hour>? hour,
//   }) =>
//       Forecastday(
//         date: date ?? this.date,
//         dateEpoch: dateEpoch ?? this.dateEpoch,
//         day: day ?? this.day,
//         astro: astro ?? this.astro,
//         hour: hour ?? this.hour,
//       );

//   factory Forecastday.fromJson(Map<String, dynamic> json) => Forecastday(
//         date: DateTime.parse(json["date"]),
//         dateEpoch: json["date_epoch"],
//         day: Day.fromJson(json["day"]),
//         astro: Astro.fromJson(json["astro"]),
//         hour: List<Hour>.from(json["hour"].map((x) => Hour.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "date":
//             "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
//         "date_epoch": dateEpoch,
//         "day": day.toJson(),
//         "astro": astro.toJson(),
//         "hour": List<dynamic>.from(hour.map((x) => x.toJson())),
//       };
// }

// class Astro {
//   String sunrise;
//   String sunset;
//   String moonrise;
//   String moonset;
//   String moonPhase;
//   int moonIllumination;
//   int isMoonUp;
//   int isSunUp;

//   Astro({
//     required this.sunrise,
//     required this.sunset,
//     required this.moonrise,
//     required this.moonset,
//     required this.moonPhase,
//     required this.moonIllumination,
//     required this.isMoonUp,
//     required this.isSunUp,
//   });

//   Astro copyWith({
//     String? sunrise,
//     String? sunset,
//     String? moonrise,
//     String? moonset,
//     String? moonPhase,
//     int? moonIllumination,
//     int? isMoonUp,
//     int? isSunUp,
//   }) =>
//       Astro(
//         sunrise: sunrise ?? this.sunrise,
//         sunset: sunset ?? this.sunset,
//         moonrise: moonrise ?? this.moonrise,
//         moonset: moonset ?? this.moonset,
//         moonPhase: moonPhase ?? this.moonPhase,
//         moonIllumination: moonIllumination ?? this.moonIllumination,
//         isMoonUp: isMoonUp ?? this.isMoonUp,
//         isSunUp: isSunUp ?? this.isSunUp,
//       );

//   factory Astro.fromJson(Map<String, dynamic> json) => Astro(
//         sunrise: json["sunrise"],
//         sunset: json["sunset"],
//         moonrise: json["moonrise"],
//         moonset: json["moonset"],
//         moonPhase: json["moon_phase"],
//         moonIllumination: json["moon_illumination"],
//         isMoonUp: json["is_moon_up"],
//         isSunUp: json["is_sun_up"],
//       );

//   Map<String, dynamic> toJson() => {
//         "sunrise": sunrise,
//         "sunset": sunset,
//         "moonrise": moonrise,
//         "moonset": moonset,
//         "moon_phase": moonPhase,
//         "moon_illumination": moonIllumination,
//         "is_moon_up": isMoonUp,
//         "is_sun_up": isSunUp,
//       };
// }

// class Day {
//   double maxtempC;
//   double maxtempF;
//   int mintempC;
//   double mintempF;
//   double avgtempC;
//   double avgtempF;
//   double maxwindMph;
//   double maxwindKph;
//   double totalprecipMm;
//   double totalprecipIn;
//   int totalsnowCm;
//   double avgvisKm;
//   int avgvisMiles;
//   int avghumidity;
//   int dailyWillItRain;
//   int dailyChanceOfRain;
//   int dailyWillItSnow;
//   int dailyChanceOfSnow;
//   Condition condition;
//   int uv;

//   Day({
//     required this.maxtempC,
//     required this.maxtempF,
//     required this.mintempC,
//     required this.mintempF,
//     required this.avgtempC,
//     required this.avgtempF,
//     required this.maxwindMph,
//     required this.maxwindKph,
//     required this.totalprecipMm,
//     required this.totalprecipIn,
//     required this.totalsnowCm,
//     required this.avgvisKm,
//     required this.avgvisMiles,
//     required this.avghumidity,
//     required this.dailyWillItRain,
//     required this.dailyChanceOfRain,
//     required this.dailyWillItSnow,
//     required this.dailyChanceOfSnow,
//     required this.condition,
//     required this.uv,
//   });

//   Day copyWith({
//     double? maxtempC,
//     double? maxtempF,
//     int? mintempC,
//     double? mintempF,
//     double? avgtempC,
//     double? avgtempF,
//     double? maxwindMph,
//     double? maxwindKph,
//     double? totalprecipMm,
//     double? totalprecipIn,
//     int? totalsnowCm,
//     double? avgvisKm,
//     int? avgvisMiles,
//     int? avghumidity,
//     int? dailyWillItRain,
//     int? dailyChanceOfRain,
//     int? dailyWillItSnow,
//     int? dailyChanceOfSnow,
//     Condition? condition,
//     int? uv,
//   }) =>
//       Day(
//         maxtempC: maxtempC ?? this.maxtempC,
//         maxtempF: maxtempF ?? this.maxtempF,
//         mintempC: mintempC ?? this.mintempC,
//         mintempF: mintempF ?? this.mintempF,
//         avgtempC: avgtempC ?? this.avgtempC,
//         avgtempF: avgtempF ?? this.avgtempF,
//         maxwindMph: maxwindMph ?? this.maxwindMph,
//         maxwindKph: maxwindKph ?? this.maxwindKph,
//         totalprecipMm: totalprecipMm ?? this.totalprecipMm,
//         totalprecipIn: totalprecipIn ?? this.totalprecipIn,
//         totalsnowCm: totalsnowCm ?? this.totalsnowCm,
//         avgvisKm: avgvisKm ?? this.avgvisKm,
//         avgvisMiles: avgvisMiles ?? this.avgvisMiles,
//         avghumidity: avghumidity ?? this.avghumidity,
//         dailyWillItRain: dailyWillItRain ?? this.dailyWillItRain,
//         dailyChanceOfRain: dailyChanceOfRain ?? this.dailyChanceOfRain,
//         dailyWillItSnow: dailyWillItSnow ?? this.dailyWillItSnow,
//         dailyChanceOfSnow: dailyChanceOfSnow ?? this.dailyChanceOfSnow,
//         condition: condition ?? this.condition,
//         uv: uv ?? this.uv,
//       );

//   factory Day.fromJson(Map<String, dynamic> json) => Day(
//         maxtempC: json["maxtemp_c"]?.toDouble(),
//         maxtempF: json["maxtemp_f"]?.toDouble(),
//         mintempC: json["mintemp_c"],
//         mintempF: json["mintemp_f"]?.toDouble(),
//         avgtempC: json["avgtemp_c"]?.toDouble(),
//         avgtempF: json["avgtemp_f"]?.toDouble(),
//         maxwindMph: json["maxwind_mph"]?.toDouble(),
//         maxwindKph: json["maxwind_kph"]?.toDouble(),
//         totalprecipMm: json["totalprecip_mm"]?.toDouble(),
//         totalprecipIn: json["totalprecip_in"]?.toDouble(),
//         totalsnowCm: json["totalsnow_cm"],
//         avgvisKm: json["avgvis_km"]?.toDouble(),
//         avgvisMiles: json["avgvis_miles"],
//         avghumidity: json["avghumidity"],
//         dailyWillItRain: json["daily_will_it_rain"],
//         dailyChanceOfRain: json["daily_chance_of_rain"],
//         dailyWillItSnow: json["daily_will_it_snow"],
//         dailyChanceOfSnow: json["daily_chance_of_snow"],
//         condition: Condition.fromJson(json["condition"]),
//         uv: json["uv"],
//       );

//   Map<String, dynamic> toJson() => {
//         "maxtemp_c": maxtempC,
//         "maxtemp_f": maxtempF,
//         "mintemp_c": mintempC,
//         "mintemp_f": mintempF,
//         "avgtemp_c": avgtempC,
//         "avgtemp_f": avgtempF,
//         "maxwind_mph": maxwindMph,
//         "maxwind_kph": maxwindKph,
//         "totalprecip_mm": totalprecipMm,
//         "totalprecip_in": totalprecipIn,
//         "totalsnow_cm": totalsnowCm,
//         "avgvis_km": avgvisKm,
//         "avgvis_miles": avgvisMiles,
//         "avghumidity": avghumidity,
//         "daily_will_it_rain": dailyWillItRain,
//         "daily_chance_of_rain": dailyChanceOfRain,
//         "daily_will_it_snow": dailyWillItSnow,
//         "daily_chance_of_snow": dailyChanceOfSnow,
//         "condition": condition.toJson(),
//         "uv": uv,
//       };
// }

// class Hour {
//   int timeEpoch;
//   String time;
//   double tempC;
//   double tempF;
//   int isDay;
//   Condition condition;
//   double windMph;
//   double windKph;
//   int windDegree;
//   String windDir;
//   int pressureMb;
//   double pressureIn;
//   double precipMm;
//   double precipIn;
//   int snowCm;
//   int humidity;
//   int cloud;
//   double feelslikeC;
//   double feelslikeF;
//   double windchillC;
//   double windchillF;
//   double heatindexC;
//   double heatindexF;
//   double dewpointC;
//   double dewpointF;
//   int willItRain;
//   int chanceOfRain;
//   int willItSnow;
//   int chanceOfSnow;
//   int visKm;
//   int visMiles;
//   double gustMph;
//   double gustKph;
//   int uv;

//   Hour({
//     required this.timeEpoch,
//     required this.time,
//     required this.tempC,
//     required this.tempF,
//     required this.isDay,
//     required this.condition,
//     required this.windMph,
//     required this.windKph,
//     required this.windDegree,
//     required this.windDir,
//     required this.pressureMb,
//     required this.pressureIn,
//     required this.precipMm,
//     required this.precipIn,
//     required this.snowCm,
//     required this.humidity,
//     required this.cloud,
//     required this.feelslikeC,
//     required this.feelslikeF,
//     required this.windchillC,
//     required this.windchillF,
//     required this.heatindexC,
//     required this.heatindexF,
//     required this.dewpointC,
//     required this.dewpointF,
//     required this.willItRain,
//     required this.chanceOfRain,
//     required this.willItSnow,
//     required this.chanceOfSnow,
//     required this.visKm,
//     required this.visMiles,
//     required this.gustMph,
//     required this.gustKph,
//     required this.uv,
//   });

//   Hour copyWith({
//     int? timeEpoch,
//     String? time,
//     double? tempC,
//     double? tempF,
//     int? isDay,
//     Condition? condition,
//     double? windMph,
//     double? windKph,
//     int? windDegree,
//     String? windDir,
//     int? pressureMb,
//     double? pressureIn,
//     double? precipMm,
//     double? precipIn,
//     int? snowCm,
//     int? humidity,
//     int? cloud,
//     double? feelslikeC,
//     double? feelslikeF,
//     double? windchillC,
//     double? windchillF,
//     double? heatindexC,
//     double? heatindexF,
//     double? dewpointC,
//     double? dewpointF,
//     int? willItRain,
//     int? chanceOfRain,
//     int? willItSnow,
//     int? chanceOfSnow,
//     int? visKm,
//     int? visMiles,
//     double? gustMph,
//     double? gustKph,
//     int? uv,
//   }) =>
//       Hour(
//         timeEpoch: timeEpoch ?? this.timeEpoch,
//         time: time ?? this.time,
//         tempC: tempC ?? this.tempC,
//         tempF: tempF ?? this.tempF,
//         isDay: isDay ?? this.isDay,
//         condition: condition ?? this.condition,
//         windMph: windMph ?? this.windMph,
//         windKph: windKph ?? this.windKph,
//         windDegree: windDegree ?? this.windDegree,
//         windDir: windDir ?? this.windDir,
//         pressureMb: pressureMb ?? this.pressureMb,
//         pressureIn: pressureIn ?? this.pressureIn,
//         precipMm: precipMm ?? this.precipMm,
//         precipIn: precipIn ?? this.precipIn,
//         snowCm: snowCm ?? this.snowCm,
//         humidity: humidity ?? this.humidity,
//         cloud: cloud ?? this.cloud,
//         feelslikeC: feelslikeC ?? this.feelslikeC,
//         feelslikeF: feelslikeF ?? this.feelslikeF,
//         windchillC: windchillC ?? this.windchillC,
//         windchillF: windchillF ?? this.windchillF,
//         heatindexC: heatindexC ?? this.heatindexC,
//         heatindexF: heatindexF ?? this.heatindexF,
//         dewpointC: dewpointC ?? this.dewpointC,
//         dewpointF: dewpointF ?? this.dewpointF,
//         willItRain: willItRain ?? this.willItRain,
//         chanceOfRain: chanceOfRain ?? this.chanceOfRain,
//         willItSnow: willItSnow ?? this.willItSnow,
//         chanceOfSnow: chanceOfSnow ?? this.chanceOfSnow,
//         visKm: visKm ?? this.visKm,
//         visMiles: visMiles ?? this.visMiles,
//         gustMph: gustMph ?? this.gustMph,
//         gustKph: gustKph ?? this.gustKph,
//         uv: uv ?? this.uv,
//       );

//   factory Hour.fromJson(Map<String, dynamic> json) => Hour(
//         timeEpoch: json["time_epoch"],
//         time: json["time"],
//         tempC: json["temp_c"]?.toDouble(),
//         tempF: json["temp_f"]?.toDouble(),
//         isDay: json["is_day"],
//         condition: Condition.fromJson(json["condition"]),
//         windMph: json["wind_mph"]?.toDouble(),
//         windKph: json["wind_kph"]?.toDouble(),
//         windDegree: json["wind_degree"],
//         windDir: json["wind_dir"],
//         pressureMb: json["pressure_mb"],
//         pressureIn: json["pressure_in"]?.toDouble(),
//         precipMm: json["precip_mm"]?.toDouble(),
//         precipIn: json["precip_in"]?.toDouble(),
//         snowCm: json["snow_cm"],
//         humidity: json["humidity"],
//         cloud: json["cloud"],
//         feelslikeC: json["feelslike_c"]?.toDouble(),
//         feelslikeF: json["feelslike_f"]?.toDouble(),
//         windchillC: json["windchill_c"]?.toDouble(),
//         windchillF: json["windchill_f"]?.toDouble(),
//         heatindexC: json["heatindex_c"]?.toDouble(),
//         heatindexF: json["heatindex_f"]?.toDouble(),
//         dewpointC: json["dewpoint_c"]?.toDouble(),
//         dewpointF: json["dewpoint_f"]?.toDouble(),
//         willItRain: json["will_it_rain"],
//         chanceOfRain: json["chance_of_rain"],
//         willItSnow: json["will_it_snow"],
//         chanceOfSnow: json["chance_of_snow"],
//         visKm: json["vis_km"],
//         visMiles: json["vis_miles"],
//         gustMph: json["gust_mph"]?.toDouble(),
//         gustKph: json["gust_kph"]?.toDouble(),
//         uv: json["uv"],
//       );

//   Map<String, dynamic> toJson() => {
//         "time_epoch": timeEpoch,
//         "time": time,
//         "temp_c": tempC,
//         "temp_f": tempF,
//         "is_day": isDay,
//         "condition": condition.toJson(),
//         "wind_mph": windMph,
//         "wind_kph": windKph,
//         "wind_degree": windDegree,
//         "wind_dir": windDir,
//         "pressure_mb": pressureMb,
//         "pressure_in": pressureIn,
//         "precip_mm": precipMm,
//         "precip_in": precipIn,
//         "snow_cm": snowCm,
//         "humidity": humidity,
//         "cloud": cloud,
//         "feelslike_c": feelslikeC,
//         "feelslike_f": feelslikeF,
//         "windchill_c": windchillC,
//         "windchill_f": windchillF,
//         "heatindex_c": heatindexC,
//         "heatindex_f": heatindexF,
//         "dewpoint_c": dewpointC,
//         "dewpoint_f": dewpointF,
//         "will_it_rain": willItRain,
//         "chance_of_rain": chanceOfRain,
//         "will_it_snow": willItSnow,
//         "chance_of_snow": chanceOfSnow,
//         "vis_km": visKm,
//         "vis_miles": visMiles,
//         "gust_mph": gustMph,
//         "gust_kph": gustKph,
//         "uv": uv,
//       };
// }

// class Location {
//   String name;
//   String region;
//   String country;
//   double lat;
//   double lon;
//   String tzId;
//   int localtimeEpoch;
//   String localtime;

//   Location({
//     required this.name,
//     required this.region,
//     required this.country,
//     required this.lat,
//     required this.lon,
//     required this.tzId,
//     required this.localtimeEpoch,
//     required this.localtime,
//   });

//   Location copyWith({
//     String? name,
//     String? region,
//     String? country,
//     double? lat,
//     double? lon,
//     String? tzId,
//     int? localtimeEpoch,
//     String? localtime,
//   }) =>
//       Location(
//         name: name ?? this.name,
//         region: region ?? this.region,
//         country: country ?? this.country,
//         lat: lat ?? this.lat,
//         lon: lon ?? this.lon,
//         tzId: tzId ?? this.tzId,
//         localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
//         localtime: localtime ?? this.localtime,
//       );

//   factory Location.fromJson(Map<String, dynamic> json) => Location(
//         name: json["name"],
//         region: json["region"],
//         country: json["country"],
//         lat: json["lat"]?.toDouble(),
//         lon: json["lon"]?.toDouble(),
//         tzId: json["tz_id"],
//         localtimeEpoch: json["localtime_epoch"],
//         localtime: json["localtime"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "region": region,
//         "country": country,
//         "lat": lat,
//         "lon": lon,
//         "tz_id": tzId,
//         "localtime_epoch": localtimeEpoch,
//         "localtime": localtime,
//       };
// }

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }

class CurrentForecast {
  Location location;
  Current current;
  Forecast forecast;

  CurrentForecast({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory CurrentForecast.fromJson(Map<String, dynamic> json) {
    return CurrentForecast(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
      forecast: Forecast.fromJson(json['forecast']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'current': current.toJson(),
      'forecast': forecast.toJson(),
    };
  }
}

class Location {
  String name;
  String region;
  String country;
  double lat;
  double lon;
  String tzId;
  int localtimeEpoch;
  String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
      tzId: json['tz_id'],
      localtimeEpoch: json['localtime_epoch'],
      localtime: json['localtime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'region': region,
      'country': country,
      'lat': lat,
      'lon': lon,
      'tz_id': tzId,
      'localtime_epoch': localtimeEpoch,
      'localtime': localtime,
    };
  }
}

class Current {
  int lastUpdatedEpoch;
  String lastUpdated;
  double tempC;
  double tempF;
  int isDay;
  Condition condition;
  double windMph;
  double windKph;
  int windDegree;
  String windDir;
  double pressureMb;
  double pressureIn;
  double precipMm;
  double precipIn;
  int humidity;
  int cloud;
  double feelslikeC;
  double feelslikeF;
  double visKm;
  double visMiles;
  double uv;
  double gustMph;
  double gustKph;

  Current({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      lastUpdatedEpoch: json['last_updated_epoch'],
      lastUpdated: json['last_updated'],
      tempC: json['temp_c'].toDouble(),
      tempF: json['temp_f'].toDouble(),
      isDay: json['is_day'],
      condition: Condition.fromJson(json['condition']),
      windMph: json['wind_mph'].toDouble(),
      windKph: json['wind_kph'].toDouble(),
      windDegree: json['wind_degree'],
      windDir: json['wind_dir'],
      pressureMb: json['pressure_mb'].toDouble(),
      pressureIn: json['pressure_in'].toDouble(),
      precipMm: json['precip_mm'].toDouble(),
      precipIn: json['precip_in'].toDouble(),
      humidity: json['humidity'],
      cloud: json['cloud'],
      feelslikeC: json['feelslike_c'].toDouble(),
      feelslikeF: json['feelslike_f'].toDouble(),
      visKm: json['vis_km'].toDouble(),
      visMiles: json['vis_miles'].toDouble(),
      uv: json['uv'].toDouble(),
      gustMph: json['gust_mph'].toDouble(),
      gustKph: json['gust_kph'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'last_updated_epoch': lastUpdatedEpoch,
      'last_updated': lastUpdated,
      'temp_c': tempC,
      'temp_f': tempF,
      'is_day': isDay,
      'condition': condition.toJson(),
      'wind_mph': windMph,
      'wind_kph': windKph,
      'wind_degree': windDegree,
      'wind_dir': windDir,
      'pressure_mb': pressureMb,
      'pressure_in': pressureIn,
      'precip_mm': precipMm,
      'precip_in': precipIn,
      'humidity': humidity,
      'cloud': cloud,
      'feelslike_c': feelslikeC,
      'feelslike_f': feelslikeF,
      'vis_km': visKm,
      'vis_miles': visMiles,
      'uv': uv,
      'gust_mph': gustMph,
      'gust_kph': gustKph,
    };
  }
}

class Condition {
  String text;
  String icon;
  int code;

  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'icon': icon,
      'code': code,
    };
  }
}

class Forecast {
  List<ForecastDay> forecastday;

  Forecast({
    required this.forecastday,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      forecastday: List<ForecastDay>.from(
          json['forecastday'].map((x) => ForecastDay.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'forecastday': List<dynamic>.from(forecastday.map((x) => x.toJson())),
    };
  }
}

class ForecastDay {
  String date;
  int dateEpoch;
  Day day;
  Astro astro;
  List<Hour> hour;

  ForecastDay({
    required this.date,
    required this.dateEpoch,
    required this.day,
    required this.astro,
    required this.hour,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: Day.fromJson(json['day']),
      astro: Astro.fromJson(json['astro']),
      hour: List<Hour>.from(json['hour'].map((x) => Hour.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'date_epoch': dateEpoch,
      'day': day.toJson(),
      'astro': astro.toJson(),
      'hour': List<dynamic>.from(hour.map((x) => x.toJson())),
    };
  }
}

class Day {
  double maxtempC;
  double maxtempF;
  double mintempC;
  double mintempF;
  double avgtempC;
  double avgtempF;
  double maxwindMph;
  double maxwindKph;
  double totalprecipMm;
  double totalprecipIn;
  double totalsnowCm;
  double avgvisKm;
  double avgvisMiles;
  int avghumidity;
  int dailyWillItRain;
  int dailyChanceOfRain;
  int dailyWillItSnow;
  int dailyChanceOfSnow;
  Condition condition;
  double uv;

  Day({
    required this.maxtempC,
    required this.maxtempF,
    required this.mintempC,
    required this.mintempF,
    required this.avgtempC,
    required this.avgtempF,
    required this.maxwindMph,
    required this.maxwindKph,
    required this.totalprecipMm,
    required this.totalprecipIn,
    required this.totalsnowCm,
    required this.avgvisKm,
    required this.avgvisMiles,
    required this.avghumidity,
    required this.dailyWillItRain,
    required this.dailyChanceOfRain,
    required this.dailyWillItSnow,
    required this.dailyChanceOfSnow,
    required this.condition,
    required this.uv,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      maxtempC: json['maxtemp_c'].toDouble(),
      maxtempF: json['maxtemp_f'].toDouble(),
      mintempC: json['mintemp_c'].toDouble(),
      mintempF: json['mintemp_f'].toDouble(),
      avgtempC: json['avgtemp_c'].toDouble(),
      avgtempF: json['avgtemp_f'].toDouble(),
      maxwindMph: json['maxwind_mph'].toDouble(),
      maxwindKph: json['maxwind_kph'].toDouble(),
      totalprecipMm: json['totalprecip_mm'].toDouble(),
      totalprecipIn: json['totalprecip_in'].toDouble(),
      totalsnowCm: json['totalsnow_cm'].toDouble(),
      avgvisKm: json['avgvis_km'].toDouble(),
      avgvisMiles: json['avgvis_miles'].toDouble(),
      avghumidity: json['avghumidity'],
      dailyWillItRain: json['daily_will_it_rain'],
      dailyChanceOfRain: json['daily_chance_of_rain'],
      dailyWillItSnow: json['daily_will_it_snow'],
      dailyChanceOfSnow: json['daily_chance_of_snow'],
      condition: Condition.fromJson(json['condition']),
      uv: json['uv'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maxtemp_c': maxtempC,
      'maxtemp_f': maxtempF,
      'mintemp_c': mintempC,
      'mintemp_f': mintempF,
      'avgtemp_c': avgtempC,
      'avgtemp_f': avgtempF,
      'maxwind_mph': maxwindMph,
      'maxwind_kph': maxwindKph,
      'totalprecip_mm': totalprecipMm,
      'totalprecip_in': totalprecipIn,
      'totalsnow_cm': totalsnowCm,
      'avgvis_km': avgvisKm,
      'avgvis_miles': avgvisMiles,
      'avghumidity': avghumidity,
      'daily_will_it_rain': dailyWillItRain,
      'daily_chance_of_rain': dailyChanceOfRain,
      'daily_will_it_snow': dailyWillItSnow,
      'daily_chance_of_snow': dailyChanceOfSnow,
      'condition': condition.toJson(),
      'uv': uv,
    };
  }
}

class Astro {
  String sunrise;
  String sunset;
  String moonrise;
  String moonset;
  String moonPhase;
  int moonIllumination;
  int isMoonUp;
  int isSunUp;

  Astro({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
    required this.moonIllumination,
    required this.isMoonUp,
    required this.isSunUp,
  });

  factory Astro.fromJson(Map<String, dynamic> json) {
    return Astro(
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      moonrise: json['moonrise'],
      moonset: json['moonset'],
      moonPhase: json['moon_phase'],
      moonIllumination: json['moon_illumination'],
      isMoonUp: json['is_moon_up'],
      isSunUp: json['is_sun_up'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sunrise': sunrise,
      'sunset': sunset,
      'moonrise': moonrise,
      'moonset': moonset,
      'moon_phase': moonPhase,
      'moon_illumination': moonIllumination,
      'is_moon_up': isMoonUp,
      'is_sun_up': isSunUp,
    };
  }
}

class Hour {
  int timeEpoch;
  String time;
  double tempC;
  double tempF;
  int isDay;
  Condition condition;
  double windMph;
  double windKph;
  int windDegree;
  String windDir;
  double pressureMb;
  double pressureIn;
  double precipMm;
  double precipIn;
  double snowCm;
  int humidity;
  int cloud;
  double feelslikeC;
  double feelslikeF;
  double windchillC;
  double windchillF;
  double heatindexC;
  double heatindexF;
  double dewpointC;
  double dewpointF;
  int willItRain;
  int chanceOfRain;
  int willItSnow;
  int chanceOfSnow;
  double visKm;
  double visMiles;
  double gustMph;
  double gustKph;
  double uv;

  Hour({
    required this.timeEpoch,
    required this.time,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.snowCm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatindexC,
    required this.heatindexF,
    required this.dewpointC,
    required this.dewpointF,
    required this.willItRain,
    required this.chanceOfRain,
    required this.willItSnow,
    required this.chanceOfSnow,
    required this.visKm,
    required this.visMiles,
    required this.gustMph,
    required this.gustKph,
    required this.uv,
  });

  factory Hour.fromJson(Map<String, dynamic> json) {
    return Hour(
      timeEpoch: json['time_epoch'],
      time: json['time'],
      tempC: json['temp_c'].toDouble(),
      tempF: json['temp_f'].toDouble(),
      isDay: json['is_day'],
      condition: Condition.fromJson(json['condition']),
      windMph: json['wind_mph'].toDouble(),
      windKph: json['wind_kph'].toDouble(),
      windDegree: json['wind_degree'],
      windDir: json['wind_dir'],
      pressureMb: json['pressure_mb'].toDouble(),
      pressureIn: json['pressure_in'].toDouble(),
      precipMm: json['precip_mm'].toDouble(),
      precipIn: json['precip_in'].toDouble(),
      snowCm: json['snow_cm'].toDouble(),
      humidity: json['humidity'],
      cloud: json['cloud'],
      feelslikeC: json['feelslike_c'].toDouble(),
      feelslikeF: json['feelslike_f'].toDouble(),
      windchillC: json['windchill_c'].toDouble(),
      windchillF: json['windchill_f'].toDouble(),
      heatindexC: json['heatindex_c'].toDouble(),
      heatindexF: json['heatindex_f'].toDouble(),
      dewpointC: json['dewpoint_c'].toDouble(),
      dewpointF: json['dewpoint_f'].toDouble(),
      willItRain: json['will_it_rain'],
      chanceOfRain: json['chance_of_rain'],
      willItSnow: json['will_it_snow'],
      chanceOfSnow: json['chance_of_snow'],
      visKm: json['vis_km'].toDouble(),
      visMiles: json['vis_miles'].toDouble(),
      gustMph: json['gust_mph'].toDouble(),
      gustKph: json['gust_kph'].toDouble(),
      uv: json['uv'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'time_epoch': timeEpoch,
      'time': time,
      'temp_c': tempC,
      'temp_f': tempF,
      'is_day': isDay,
      'condition': condition.toJson(),
      'wind_mph': windMph,
      'wind_kph': windKph,
      'wind_degree': windDegree,
      'wind_dir': windDir,
      'pressure_mb': pressureMb,
      'pressure_in': pressureIn,
      'precip_mm': precipMm,
      'precip_in': precipIn,
      'snow_cm': snowCm,
      'humidity': humidity,
      'cloud': cloud,
      'feelslike_c': feelslikeC,
      'feelslike_f': feelslikeF,
      'windchill_c': windchillC,
      'windchill_f': windchillF,
      'heatindex_c': heatindexC,
      'heatindex_f': heatindexF,
      'dewpoint_c': dewpointC,
      'dewpoint_f': dewpointF,
      'will_it_rain': willItRain,
      'chance_of_rain': chanceOfRain,
      'will_it_snow': willItSnow,
      'chance_of_snow': chanceOfSnow,
      'vis_km': visKm,
      'vis_miles': visMiles,
      'gust_mph': gustMph,
      'gust_kph': gustKph,
      'uv': uv,
    };
  }
}
