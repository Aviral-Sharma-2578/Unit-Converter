import 'package:flutter/material.dart';

class WeightActions extends StatefulWidget {
  @override
  _WeightActionsState createState() => _WeightActionsState();
}

class _WeightActionsState extends State<WeightActions> {
  String _from = 'kg';
  String _to = 'g';
  double _value = 0;
  double _answer = 0;

  void convert(String from, String to, double value) async {
    if (value == 0) {
      return;
    }
    if (from == to) {
      setState(() {
        _answer = value;
      });
    }
    if (from == 'kg' && to == 'g') {
      setState(() {
        _answer = value * 1000;
      });
    }
    if (from == 'g' && to == 'kg') {
      setState(() {
        _answer = value / 1000;
      });
    }
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              DropdownButton(
                value: _from,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Kilograms ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 'kg',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Grams",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 'g',
                  ),
                ],
                hint: Text('Length Scale'),
                onChanged: (from) {
                  setState(() {
                    _from = from;
                  });
                },
              ),
              SizedBox(
                width: 100,
              ),
              DropdownButton(
                value: _to,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Kilograms ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 'kg',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Grams",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 'g',
                  ),
                ],
                hint: Text('Length Scale'),
                onChanged: (to) {
                  setState(() {
                    _to = to;
                  });
                },
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width * 0.32,
                child: TextField(
                  cursorHeight: 20,
                  onSubmitted: (value) =>
                      convert(_from, _to, double.parse(value)),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: '  Enter value...',
                      floatingLabelBehavior: FloatingLabelBehavior.never),
                  onChanged: (value) {
                    setState(() {
                      _value = double.tryParse(value);
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                _from == 'kg' ? "kg" : "g",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                '=',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width * 0.21,
                child: Text(
                  _answer.toStringAsFixed(3),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                _to == 'kg' ? "kg" : "g",
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
              Colors.black,
            )),
            onPressed: () => convert(_from, _to, _value),
            child: Text(
              'Convert',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
