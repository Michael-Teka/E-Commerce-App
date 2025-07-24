import 'package:flutter/material.dart';
class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("🛒 Your Cart is Empty", style: TextStyle(fontSize: 24)),
    );
  }
}
