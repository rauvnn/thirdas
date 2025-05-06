import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void increase() {
    setState(() {
      count += 1;
    });
  }

  void decrease() {
    setState(() {
      count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20.0, bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'btnDec',
              onPressed: decrease,
              tooltip: 'Subtract',
              backgroundColor: Colors.redAccent,
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              heroTag: 'btnInc',
              onPressed: increase,
              tooltip: 'Add',
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
