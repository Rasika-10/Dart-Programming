import 'dart:developer';

void main() async {
  final task = TimelineTask();

  task.start('Order Processing');

  // Step 1: Simulate fetching orders from API (async delay)
  await Future.delayed(Duration(seconds: 2));
  task.instant('Fetched orders from API');

  // Step 2: Simulate CPU-bound processing (heavy synchronous work)
  int dummy = 0;
  for (int i = 0; i < 50000000; i++) {
    dummy += i % 7; // simple calculation to consume CPU time
  }
  task.instant('Processed orders (dummy result: $dummy)');

  // Step 3: Simulate saving to database (async delay)
  await Future.delayed(Duration(seconds: 1));
  task.instant('Saved orders to DB');

  task.finish();

  print('Processing complete. Waiting for DevTools...');
  await Future.delayed(Duration(seconds: 30)); // Keep app alive for DevTools
}
