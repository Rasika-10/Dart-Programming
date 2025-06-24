import 'dart:developer';
import 'dart:io';

void processPayment(String orderId, double amount) {
  try {
    debugger(); // Pause here

    // Condition: amount must be > 0
    if (amount <= 0) {
      throw Exception('💳 Invalid payment amount');
    }

    print('✅ Payment processed for order $orderId, amount: \$$amount');
  } catch (e, s) {
    log(
      'Payment failed for order $orderId',
      name: 'PaymentService',
      error: e,
      stackTrace: s,
      level: 1000,
    );
  }
}

void processOrder(String orderId) {
  try {
    debugger(); // Pause here

    // Condition: orderId must not be empty
    if (orderId.isEmpty) {
      throw Exception('📦 Invalid order ID');
    }

    print('✅ Order processed: $orderId');
  } catch (e, s) {
    log(
      'Order processing failed for $orderId',
      name: 'OrderService',
      error: e,
      stackTrace: s,
      level: 1000,
    );
  }
}

void checkInventory(String productId) {
  try {
    debugger(); // Pause here

    // Condition: productId must start with 'PROD'
    if (!productId.startsWith('PROD')) {
      throw Exception('🏪 Invalid product ID');
    }

    print('✅ Inventory available for product $productId');
  } catch (e, s) {
    log(
      'Inventory check failed for product $productId',
      name: 'InventoryService',
      error: e,
      stackTrace: s,
      level: 1000,
    );
  }
}

void sendNotification(String userId) {
  try {
    debugger(); // Pause here

    // Condition: userId must not be null or empty
    if (userId.trim().isEmpty) {
      throw Exception('📩 Invalid user ID');
    }

    print('✅ Notification sent to user $userId');
  } catch (e, s) {
    log(
      'Failed to send notification to user $userId',
      name: 'NotificationService',
      error: e,
      stackTrace: s,
      level: 1000,
    );
  }
}

void main() {
  // Test with valid and invalid inputs
  processPayment('ORD1234', 199.99);     // ✅
  processPayment('ORD5678', -50);        // ❌

  processOrder('ORD1234');               // ✅
  processOrder('');                      // ❌

  checkInventory('PROD5678');            // ✅
  checkInventory('XYZ123');              // ❌

  sendNotification('USER999');           // ✅
  sendNotification('   ');               // ❌

  print('\n All steps attempted. Press ENTER to exit.');
  stdin.readLineSync();
}
