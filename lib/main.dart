import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/router/router.dart';
import 'package:i_bilding/service/hive_service.dart';

void main() async {
  await Hive.initFlutter();
  await HiveService.initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ConstColor.background,
        appBarTheme: AppBarTheme(backgroundColor: ConstColor.background),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/nav_bar",
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
