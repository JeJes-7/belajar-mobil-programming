import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

final List<Product> _products = [
  Product(
    id: '1',
    name: 'Dimsum Ayam',
    description: 'Dimsum isi ayam halal dan lembut.',
    imageUrl:
        'https://drive.google.com/uc?export=view&id=108s_t94eSVUpdXuxlRfTc8Mg83BRDcBQ',
    price: 10000,
  ),
  Product(
    id: '2',
    name: 'Dimsum Udang',
    description: 'Dimsum isi udang segar pilihan.',
    imageUrl:
        'https://drive.google.com/uc?export=view&id=1KEvV0PSqNlM9h_pCRqZsIwTqCi8BmBc4',
    price: 12000,
  ),
  Product(
    id: '3',
    name: 'Lumpia Tahu',
    description: 'Lumpia kulit tahu isi sayur dan ayam.',
    imageUrl:
        'https://drive.google.com/uc?export=view&id=1Vkkh4kXpw21xOFKwoXkP5y8aaHdek5sZ',
    price: 8000,
  ),
  Product(
    id: '4',
    name: 'Paket Komplit',
    description: 'Dimsum komplit isi ayam dan udang.',
    imageUrl:
        'https://drive.google.com/uc?export=view&id=1Ul6FW66DY_uePmGUSOgy4ko8V1ZSHfZ2',
    price: 15000,
  ),
  Product(
    id: '5',
    name: 'Chili Oil',
    description: 'Sambal dimsum khas Gangnam.',
    imageUrl:
        'https://drive.google.com/uc?export=view&id=1n3qp1hakTTtoExzEv-S86qBjYfadp7X6',
    price: 5000,
  ),
];

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Dimsum'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: _products.length,
        itemBuilder: (ctx, i) => ProductItem(product: _products[i]),
      ),
    );
  }
}
