import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maushamapp/Screen/7days_forecast.dart';
import 'package:maushamapp/Screen/dataCard.dart';
import 'package:maushamapp/main.dart';
import 'package:maushamapp/services/services.dart';

final cityProvider = StateProvider<String>((ref) => "Bhaktapur,Nepal");

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // String city = "Kathmandu";
    String city = ref.watch(cityProvider);
    void showDialogBox() async {
      // For Searching the city without any suggestion. If City is not entered correctly it Shows 400 error Bad Request.
      // final TextEditingController searchController = TextEditingController();
      // return showDialog(
      //   context: context,
      //   builder: (context) {
      //     return AlertDialog(
      //       title: Text("Enter the City"),
      //       content: TextField(
      //         controller: searchController,
      //         decoration: const InputDecoration(hintText: "Enter City Name"),
      //       ),
      //       actions: [
      //         TextButton(
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //           child: Text("Cancel"),
      //         ),
      //         TextButton(
      //           onPressed: () {
      //             ref.watch(cityProvider.notifier).state =
      //                 searchController.text;
      //             Navigator.of(context).pop();
      //           },
      //           child: Text("Ok"),
      //         ),
      //       ],
      //     );
      //   },
      // );

      //For Showing Suggestion While Searching the City . If we don't enter any things for a while after it apper
      //then it may shows error(400 bad request).
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Enter the city Name"),
              content: TypeAheadField(
                suggestionsCallback: (search) async {
                  if (search == Null) {
                    return null;
                  } else {
                    return await ref
                        .watch(weatherServiceProvider)
                        .citySuggestion(search);
                  }
                },
                builder: (context, controller, focusNode) {
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    autofocus: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "City"),
                  );
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion['name']),
                  );
                },
                onSelected: (city) {
                  ref.watch(cityProvider.notifier).state = city.toString();
                },
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Ok"))
              ],
            );
          });
    }

    final islight = ref.watch(themeprovider);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Mausham"),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            ref.refresh(weatherProvider(city));
          },
          child: Consumer(builder: (context, ref, child) {
            final weatherdata = ref.watch(weatherProvider(city));

            return weatherdata.when(
              data: (data) {
                return SingleChildScrollView(
                  child: Container(
                    // margin: const EdgeInsets.symmetric(
                    //     horizontal: 10, vertical: 15),
                    padding: const EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              const AssetImage("assets/images/background.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3),
                            BlendMode.darken,
                          )),
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     offset: const Offset(-2, 5),
                      //     blurRadius: 2.0,
                      //     spreadRadius: 5,
                      //   )
                      // ],
                    ),
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showDialogBox();
                          },
                          child: Text(
                            data.location.name,
                            style: GoogleFonts.lato(
                                fontSize: 36,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "${data.current.tempC}°C",
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.network(
                                "http:${data.current.condition.icon}",
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                data.current.condition.text,
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Max:${data.forecast.forecastday.first.day.maxtempC}°c",
                              style: GoogleFonts.lato(
                                color: Colors.white70,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Min:${data.forecast.forecastday.first.day.mintempC}°c",
                              style: GoogleFonts.lato(
                                color: Colors.white70,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildWidget(
                              Icons.wb_sunny,
                              "Sunrise",
                              data.forecast.forecastday.first.astro.sunrise,
                            ),
                            buildWidget(
                              Icons.brightness_3,
                              "SunSet",
                              data.forecast.forecastday.first.astro.sunset,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildWidget(
                              Icons.opacity,
                              "Humadity",
                              data.current.humidity,
                            ),
                            buildWidget(
                              Icons.wind_power,
                              "Wind (KPH)",
                              data.current.windKph,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => DetailsForecast(city)));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF1A2344)),
                            child: Text(
                              "7 Days Forecast",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              error: (error, StackTrace) {
                return Center(
                  child: Text(
                    error.toString(),
                  ),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          islight
              ? ref.read(themeprovider.notifier).state = false
              : ref.read(themeprovider.notifier).state = true;
        },
        child: const Icon(Icons.light_mode),
      ),
    );
  }
}
