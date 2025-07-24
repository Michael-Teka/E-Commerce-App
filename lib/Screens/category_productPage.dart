// lib/pages/category_product_page.dart
import 'package:ecommerce/Screens/product_detail.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class CategoryProductPage extends StatelessWidget {
  final String title;
  const CategoryProductPage({super.key, required this.title});

  List<Product> getProductsByCategory(String category) {
    switch (category) {
      case 'Electronics':
        return [
          Product(
            name: 'Smart TV',
            image: 'assets/images/tv.jpg',
            price: 499.99,
            description: 'A high-definition Smart TV with amazing clarity.',
          ),
          Product(
            name: 'Refrigrator',
            image: 'assets/images/frinje.jpg',
            price: 89.99,
            description: 'A high-quality product perfect for everyday use refrigrator.',
          ),
        ];
      case 'Clothes':
        return [
          Product(
            name: 'T-Shirt',
            image: 'assets/images/cloth.jpg',
            price: 19.99,
            description: 'Soft cotton t-shirt, comfortable for daily wear.',
          ),
          Product(
            name: 'T-Shirt',
            image: 'assets/images/shirt.jpg',
            price: 39.99,
            description: 'Stylish and durable denim shirt.',
          ),
        ];
      case 'Shoes':
        return [
          Product(
            name: 'Running Shoes',
            image: 'assets/images/shoe1.jpg',
            price: 59.99,
            description: 'Lightweight running shoes for active lifestyles.',
          ),
          Product(
            name: 'Sneakers',
            image: 'assets/images/shoe2.jpg',
            price: 69.99,
            description: 'Trendy sneakers for everyday wear.',
          ),
        ];
      case 'Furniture':
        return [
          Product(
            name: 'Office Chair',
            image: 'assets/images/furn1.jpg',
            price: 129.99,
            description: 'Ergonomic chair with lumbar support.',
          ),
          Product(
            name: 'Wooden Table',
            image: 'assets/images/furn2.jpg',
            price: 199.99,
            description: 'Elegant wooden table perfect for dining.',
          ),
        ];
      default:
        return [
          Product(
            name: '$category Item 1',
            image: 'assets/images/car.jpg',
            price: 49.99,
            description: 'A high-quality $category product.',
          ),
          Product(
            name: '$category Item 2',
            image: 'assets/images/default2.jpg',
            price: 59.99,
            description: 'Another great $category product.',
          ),
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> products = getProductsByCategory(title);

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
