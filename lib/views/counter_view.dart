// Archivo: lib/views/counter_view.dart
import 'package:contador/viewmodels/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CounterView extends StatelessWidget {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Contador MVVM')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador: ${counterViewModel.counter}', 
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20), // Un poco de espacio
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.increment();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
