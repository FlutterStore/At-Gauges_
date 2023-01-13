
import 'package:flutter/material.dart';
import 'package:at_gauges/at_gauges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Radial Gauge',style: TextStyle(color: Colors.white,fontSize: 15)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SimpleRadialGauge(
                actualValue: 50,
                maxValue: 100,
                // Optional Parameters
                minValue: 0,
                title: Text('Simple Radial Gauge'),
                titlePosition: TitlePosition.top,
                unit: 'L',
                icon: Icon(Icons.water),
                pointerColor: Colors.green,
                decimalPlaces: 0,
                isAnimate: true,
                animationDuration: 4000,
                size: 400,
              ),
              ScaleRadialGauge(
                maxValue: 100,
                actualValue: 70,
                // Optional Parameters
                minValue: 0,
                size: 400,
                title: Text('Scale Radial Gauge'),
                titlePosition: TitlePosition.top,
                pointerColor: Colors.green,
                needleColor: Colors.green,
                decimalPlaces: 0,
                isAnimate: true,
                animationDuration: 4000,
                unit: TextSpan(text: 'Km/h', style: TextStyle(fontSize: 10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}