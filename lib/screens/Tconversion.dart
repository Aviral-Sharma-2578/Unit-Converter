import 'package:spyro2578/widgets/scaleDrawer.dart';
import 'package:spyro2578/widgets/temperatureActions.dart';
import 'package:flutter/material.dart';

class TemperatureConversionScreen extends StatelessWidget {
  static const routeName = '/temperature-conversion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 104, 219, 192),
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Convert Temperature',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 250,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 135,
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'To',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TemperatureActions(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
