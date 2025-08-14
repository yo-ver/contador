// Archivo: lib/viewmodels/counter_viewmodel.dart

import 'package:flutter/material.dart';
import '../models/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  // 1. Guardar el estado actual
  final CounterModel model = CounterModel(0);

  // 2. Exponer los datos a la Vista
  int get count => model.count;

  // 3. Proveer las funciones de lógica
  void increment() {
    model.count++;
    notifyListeners(); // Notifica a la Vista que hubo un cambio
  }

  void decrement() {
    model.count--;
    notifyListeners(); // Notifica a la Vista que hubo un cambio
  }
}