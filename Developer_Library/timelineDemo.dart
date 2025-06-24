import 'dart:developer';


void main() async {
  var products = {
    'Laptop': 80000.0,
    'Phone': 40000.0,
    'Monitor': 15000.0,
    'Keyboard': 2000.0,
  };

  //starting a task named ‘apply-discounts
  Timeline.startSync('apply-discounts');

  //Do the task (apply 10% discount) 
  var discounted = products.map((name, price) {
    var finalPrice = price * 0.9;
    return MapEntry(name, finalPrice);
  });

  //ending the task
  Timeline.finishSync();

  discounted.forEach((name, price) {
    print('$name → ₹${price.toStringAsFixed(2)}');
  });

  print('Waiting for DevTools... (100 seconds)');
  await Future.delayed(Duration(seconds: 100)); // ⏳ Keeps app alive


}
