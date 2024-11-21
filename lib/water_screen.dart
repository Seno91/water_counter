import 'package:flutter/material.dart';
import 'package:water_counter/w_c_button.dart';

class WaterScreen extends StatelessWidget {
  const WaterScreen(
      {super.key,
      required this.counter,
      required this.incrementCounter,
      required this.decrementCounter,
      required this.resetCounter});

  final int counter;
  final void Function() incrementCounter;
  final void Function() decrementCounter;
  final void Function() resetCounter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Anzahl der Getränke"),
          Text(
            "$counter",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 64),
          Padding(
            padding: EdgeInsets.only(left: 32.0, right: 32.0),
            child: WCButton(
              onPressed: incrementCounter,
              text: "Trinken",
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: 32.0, right: 32.0),
            child: WCButton(
              // TODO: Missing function to remove a drink (_decrementCounter).
              onPressed: decrementCounter,
              text: "Getränk entfernen",
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: 32.0, right: 32.0),
            child: WCButton(
              onPressed: resetCounter,
              text: "Zähler zurücksetzen",
            ),
          ),
        ],
      ),
    );
  }
}
