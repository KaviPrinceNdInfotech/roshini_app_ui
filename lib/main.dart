import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controllers/bindings/binding_controllers.dart';
import 'modules/splash_view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: StoreBinding(),
      // title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Oswald',
        //primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      //WelcomeScreen(),
    );
  }
}
