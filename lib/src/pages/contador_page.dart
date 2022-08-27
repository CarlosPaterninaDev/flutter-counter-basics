import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContatorPageState();
  }
}

class _ContatorPageState extends State<ContadorPage> {
  final _fontsz = const TextStyle(fontSize: 30);
  int _conteo = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        elevation: 10,
        toolbarOpacity: 0.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Tap tap taps!', style: _fontsz),
            Text('$_conteo', style: _fontsz),
          ],
        ),
      ),
      floatingActionButton: _createFloatingButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _createFloatingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          onPressed: _reset,
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(width: 40),
        FloatingActionButton(
          onPressed: _sum,
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: _sustract,
          child: const Icon(Icons.remove),
        )
      ],
    );
  }

  void _sum() => setState(() => _conteo++);
  void _sustract() => setState(() => _conteo--);
  void _reset() => setState(() => _conteo = 0);
}
