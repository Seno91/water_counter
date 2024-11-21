import 'package:water_counter/database_repository.dart';

class MockDatabase implements DatabaseRepository {
  int counter = 0;
  @override
  Future<void> decrementCounter() {
    counter--;
    return Future.value();
  }

  @override
  Future<void> incrementCounter() {
    counter++;

    return Future.value();
  }

  @override
  Future<int> loadCounter() {
    return Future.value(counter);
  }

  @override
  Future<void> resetCounter() {
    counter = 0;

    return Future.value();
  }
}
