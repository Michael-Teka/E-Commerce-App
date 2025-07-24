// lib/pages/category_product_page.dart
import 'package:ecommerce/Screens/product_detail.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class CategoryProductPage extends StatelessWidget {
  final String title;
  const CategoryProductPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: '$title Item 1',
        image: 'assets/images/cloth.jpg',
        price: 49.99,
        description: 'A high-quality $title product perfect for everyday use.',
      ),
      Product(
        name: '$title Item 2',
        image: 'assets/images/tv.jpg',
        price: 299.99,
        description: 'Premium $title item with great features.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.deepPurple),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (_, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ProductDetailPage(product: product),
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.asset(product.image, fit: BoxFit.cover, width: double.infinity),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('\$${product.price}', style: const TextStyle(color: Colors.deepPurple)),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
