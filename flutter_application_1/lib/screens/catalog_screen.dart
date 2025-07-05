import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

final List<Product> _products = [
  Product(
    id: '1',
    name: 'Dimsum Ayam',
    description: 'Dimsum isi ayam halal dan lembut.',
    imageUrl:
        'https://raw.githubusercontent.com/Jejes-7/belajar-mobil-programming/main/dimsum-ayam-50x50.jpg',
    price: 10000,
  ),
  Product(
    id: '2',
    name: 'Dimsum Udang',
    description: 'Dimsum isi udang segar pilihan.',
    imageUrl:
        'https://raw.githubusercontent.com/Jejes-7/belajar-mobil-programming/main/dimsum-udang-50x50.jpg',
    price: 12000,
  ),
  Product(
    id: '3',
    name: 'Lumpia Tahu',
    description: 'Lumpia kulit tahu isi sayur dan ayam.',
    imageUrl:
        'https://raw.githubusercontent.com/Jejes-7/belajar-mobil-programming/main/lumpia-kulit-tahu-50x50.jpg',
    price: 8000,
  ),
  Product(
    id: '4',
    name: 'Paket Komplit',
    description: 'Dimsum komplit isi ayam dan udang.',
    imageUrl:
        'https://raw.githubusercontent.com/Jejes-7/belajar-mobil-programming/main/paket-komplit%202-50x50.jpg',
    price: 15000,
  ),
  Product(
    id: '5',
    name: 'Chili Oil',
    description: 'Sambal dimsum khas Gangnam.',
    imageUrl:
        'https://raw.githubusercontent.com/JeJes-7/belajar-mobil-programming/main/Food-Scraps-Chile-Oil-5523-e1634673201543-50x50.jpg',
    price: 5000,
  ),
];

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Dimsum'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: _products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return ProductItem(product: _products[index]);
          },
        ),
      ),
    );
  }
}
