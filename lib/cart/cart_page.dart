// lib/cart/cart_page.dart
import 'package:ecommerce/cart/cart.dart';
import 'package:flutter/material.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    final items = Cart.items;

    return Scaffold(
      body: items.isEmpty
          ? const Center(child: Text("🛒 Your cart is empty"))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (_, index) {
                final item = items[index];
                return ListTile(
                  leading: Image.asset(item.image, width: 50, fit: BoxFit.cover),
                  title: Text(item.name),
                  subtitle: Text('\$${item.price}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle, color: Colors.red),
                    onPressed: () {
                      Cart.removeFromCart(item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.name} removed from cart')),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
