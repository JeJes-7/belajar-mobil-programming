import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final NumberFormat currencyFormat;

  ProductDetailScreen({
    super.key,
    required this.product,
  }) : currencyFormat = NumberFormat.currency(
          locale: 'id_ID',
          symbol: 'Rp ',
          decimalDigits: 0,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const SizedBox(
                  height: 250,
                  child: Center(child: CircularProgressIndicator()),
                );
              },
              errorBuilder: (context, error, stackTrace) => const SizedBox(
                  height: 250, child: Icon(Icons.broken_image, size: 100)),
            ),
            const SizedBox(height: 16.0),
            Text(
              product.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              currencyFormat.format(product.price),
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 16.0),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                final Uri launchUri = Uri(
                  scheme: 'https',
                  host: 'wa.me',
                  path: '1234567890',
                  queryParameters: {
                    'text': 'Saya tertarik dengan ${product.name}'
                  },
                );
                await launchUrl(launchUri);
              },
              child: const Text('Pesan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
