import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maushamapp/main.dart';
import 'package:maushamapp/services/services.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String city = "Kathmandu";
    final islight = ref.watch(themeprovider);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Mausham"),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await ref.refresh(weatherProvider(city));
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
                      color: Color(0xFFFFFFFF),
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
                        Text(
                          data.location.name,
                          style: GoogleFonts.lato(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
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
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.network(
                          "http:${data.current.condition.icon}",
                          height: 100,
                          width: 100,
                          fit: BoxFit.fitHeight,
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
        child: Icon(Icons.light_mode),
      ),
    );
  }
}
