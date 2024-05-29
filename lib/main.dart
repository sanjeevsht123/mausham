import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maushamapp/Screen/home.dart';

final themeprovider = StateProvider<bool>((ref) => true);
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final islight = ref.watch(themeprovider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mausham',
      theme: islight ? ThemeData.light() : ThemeData.dark(),
      home: Home(),
    );
  }
}
