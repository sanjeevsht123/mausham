import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maushamapp/services/services.dart';

class DetailsForecast extends ConsumerWidget {
  final String city;
  const DetailsForecast(this.city, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final citydata = ref.watch(sevendaysWeatherProvider(city));
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "3 Days Forecast",
        //     style: GoogleFonts.lato(
        //         fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: const Color.fromARGB(255, 100, 30, 113),
        // ),
        body: SafeArea(
      child: citydata.when(
          data: (data) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: const AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3),
                        BlendMode.darken,
                      )),
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "3 Days Forecast",
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.forecast.forecastday.length,
                        itemBuilder: (context, index) {
                          final day = data.forecast.forecastday[index].day;
                          String date = data.forecast.forecastday[index].date;
                          return _Forecast(
                            date,
                            day.condition.icon,
                            day.avgtempC.round().toString(),
                            day.condition.text,
                            day.mintempC.round().toString(),
                            day.maxtempC.round().toString(),
                            context,
                          );
                        }),
                  ],
                ),
              ),
            );
          },
          error: (error, StackTrace) {
            return Text(error.toString());
          },
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    ));
  }
}

Widget _Forecast(String date, String image, String temp, String label,
    String min, String max, BuildContext context) {
  return ClipRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 3,
        sigmaY: 3,
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [
            const Color(0xFF1A2344).withOpacity(0.5),
            const Color(0xFF1A2344).withOpacity(0.2)
          ],
        )),
        child: Column(
          children: [
            Text(
              date,
              style: GoogleFonts.lato(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            ListTile(
              leading: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  "https:$image",
                  // height: 100,
                  // width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "$temp°c",
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                label,
                style: GoogleFonts.lato(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              trailing: Text(
                "Min: $min°c \n Max: $max°c",
                style: GoogleFonts.lato(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
