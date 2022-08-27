

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  final fontsz = const TextStyle( fontSize: 30);
  final int conteo = 100;


  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        elevation: 10,
        toolbarOpacity: 0.5,
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
             Text('Tap tap taps!', style: fontsz),
             Text('$conteo', style: fontsz ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          // conteo++ 
          // Error por Stateless Widget
        },
        child: const Icon(Icons.add),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );

  }

}