import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => Counter(),
        child: MaterialApp(home: CounterUI()),
      ),
    );

class Counter extends ChangeNotifier {
  int value = 0;
  void inc() {
    value++;
    notifyListeners();
  }
}

class CounterUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider Example")),
      body: Center(child: Text("Value: ${context.watch<Counter>().value}")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().inc(),
        child: Icon(Icons.add),
      ),
    );
  }
}
