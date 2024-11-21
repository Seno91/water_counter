abstract class DatabaseRepository {
  // load counter
  Future<int> loadCounter();
  // increment counter
  Future<void> incrementCounter();
  // decrement counter
  Future<void> decrementCounter();
  // reset counter
  Future<void> resetCounter();
}
