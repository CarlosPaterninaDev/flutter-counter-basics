import 'package:flutter/material.dart';

import 'package:my_app/src/pages/contador_page.dart';
// import 'package:my_app/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  // prefer_const_constructors_in_immutables
  // PREFER declaring const constructors on @immutable classes.
  // If a class is immutable, it is usually a good idea to make its constructor a const constructor.
  const MyApp({super.key});
  // use_key_in_widget_constructors
  // It's a good practice to expose the ability to provide a key when creating public widgets.

  //context: Conoce la informacion del arbol de componentes
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage()
        )
    );
  }
}