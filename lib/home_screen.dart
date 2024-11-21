import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SharedPreferencesAsync prefs = SharedPreferencesAsync();

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  void _saveCounter() async {
    await prefs.setInt("counter", _counter);
  }

  void _loadCounter() async {
    final rememberedCounter = await prefs.getInt("counter") ?? 0;
    setState(() {
      _counter = rememberedCounter;
    });
  }

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    _saveCounter();
  }

  // TODO: This should be implemented.
  // ignore: unused_element
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() async {
    setState(() {
      _counter = 0;
    });
    _saveCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        title: const Text("WaterCounter"),
      ),
    );
  }
}
