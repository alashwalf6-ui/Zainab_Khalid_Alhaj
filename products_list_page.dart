import 'package:flutter/material.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'title': 'اسم المنتج',
        'subtitle': 'وصف قصير للمنتج',
        'price': '\$9',
        'image': 'assets/images/cow.png',
      },
      {
        'title': 'اسم المنتج',
        'subtitle': 'وصف قصير للمنتج',
        'price': '\$3',
        'image': 'assets/images/chips.png',
      },
      {
        'title': 'اسم المنتج',
        'subtitle': 'وصف قصير للمنتج',
        'price': '\$5',
        'image': 'assets/images/milk.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('قائمة المنتجات'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        product['image'],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.image, size: 40, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['title'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          product['subtitle'],
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    product['price'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}