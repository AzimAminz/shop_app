import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Model/restaurant.dart';
import 'package:shop_app/Theme/theme_provider.dart';
import 'package:shop_app/splash.dart';

void main() {
  runApp(MultiProvider(providers: 
  [
    // theme provider
    ChangeNotifierProvider(create: (context) => ThemeProvider()),

    // restaurant provider
    ChangeNotifierProvider(create: (context) => Restaurant()),
  ],
  child: const MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const SplashScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
