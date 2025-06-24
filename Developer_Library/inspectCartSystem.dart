import 'dart:developer';
import 'dart:io';

class Product {
  final String name;
  final double price;
  final int quantity;

  Product(this.name, this.price, this.quantity);

  double get total => price * quantity;

  @override
  String toString() {
    return '$name x $quantity @ ₹$price each = ₹${total.toStringAsFixed(2)}';
  }
}

class Cart {
  List<Product> items = [];

  double get total => items.fold(0.0, (sum, item) => sum + item.total);

  @override
  String toString() {
    return items.map((item) => item.toString()).join('\n');
  }
}

void main() {
  final cart = Cart();
  cart.items.add(Product('Laptop', 75000.0, 1));
  cart.items.add(Product('Mouse', 30000, 2));
  cart.items.add(Product('Headphones', 2500.0, 1));

  debugger();
  inspect(cart);

  double total = cart.total;

  if (total.isFinite) {
    log('Cart total: ₹${total.toStringAsFixed(2)} 🛒 Items: ${cart.toString()}', 
        name: 'CartService', 
        level: 800);
    log(' ✅Cart processing complete', 
        name: 'CartService', 
        level: 800);
    
  } else {
    log('Error: Invalid total detected in cart calculation!', 
        name: 'CartService', 
        level: 1000);
  }

  print('Press ENTER to exit');
  stdin.readLineSync();
}
