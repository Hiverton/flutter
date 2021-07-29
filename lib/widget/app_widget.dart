import 'package:flutter/material.dart';
import '../widget/home_page.dart';
import '../controller/app_controller.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
         return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.purple,
            brightness: AppController.instance.isDarkTheme ? Brightness.dark :Brightness.light
          ),
          home: HomePage(),
        );
      }
    );

  }

}