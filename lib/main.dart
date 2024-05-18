import 'package:currency_converter/core/provider/theme_provider.dart';
import 'package:currency_converter/feature/views/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: (MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverlaySupport.global(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Converter',
      theme: ref.watch(themeProvider),
      home: const HomeView(),
    ));
  }
}
