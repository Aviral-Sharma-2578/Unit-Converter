import 'package:spyro2578/screens/Lconversion.dart';
import 'package:spyro2578/screens/Tconversion.dart';
import 'package:spyro2578/screens/WConversion.dart';
import 'package:spyro2578/screens/TiConversion.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text(
              'What you want to convert?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.linear_scale),
            title: Text('Length'),
            onTap: () {
              Navigator.restorablePushNamed(
                  context, LengthConversionScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.thermostat_outlined),
            title: Text('Temperature'),
            onTap: () {
              Navigator.restorablePushNamed(
                  context, TemperatureConversionScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.monitor_weight_outlined),
            title: Text('Weight'),
            onTap: () {
              Navigator.restorablePushNamed(
                  context, WeightConversionScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.lock_clock),
            title: Text('Time'),
            onTap: () {
              Navigator.restorablePushNamed(
                  context, TimeConversionScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
