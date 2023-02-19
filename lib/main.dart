import 'package:spyro2578/screens/Lconversion.dart';
import 'package:spyro2578/screens/Tconversion.dart';
import 'package:spyro2578/screens/WConversion.dart';
import 'package:spyro2578/screens/TiConversion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          secondaryHeaderColor: Colors.red,
        ),
        home: LengthConversionScreen(),
        routes: {
          LengthConversionScreen.routeName: (ctx) => LengthConversionScreen(),
          TemperatureConversionScreen.routeName: (ctx) =>
              TemperatureConversionScreen(),
          WeightConversionScreen.routeName: (ctx) => WeightConversionScreen(),
          TimeConversionScreen.routeName: (ctx) => TimeConversionScreen(),
        },
      ),
    );
  }
}
