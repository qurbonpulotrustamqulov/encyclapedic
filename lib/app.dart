import 'package:easy_localization/easy_localization.dart';
import 'package:ensyclopedic/screens/home_screen/home.dart';
import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home:const Home(),
     locale: context.locale,
     supportedLocales: context.supportedLocales,
     localizationsDelegates: context.localizationDelegates,
    );
  }
}