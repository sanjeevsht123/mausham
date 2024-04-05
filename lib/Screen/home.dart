import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maushamapp/services/services.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Mausham"),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await ref.refresh(weatherProvider);
          },
          child: Consumer(builder: (context, ref, child) {
            final weatherdata = ref.watch(weatherProvider);

            return weatherdata.when(
              data: (data) {
                return SingleChildScrollView(
                  child: Container(
                    // margin: const EdgeInsets.symmetric(
                    //     horizontal: 10, vertical: 15),
                    // padding: const EdgeInsets.all(5),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "${data.location.name},${data.location.country}",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "${data.current.tempC}°C",
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: double.infinity,
                          child: Image.network(
                            data.current.condition.iconUrl,
                            color: Colors.blue,
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
    );
  }
}
