import 'package:flutter/material.dart';

import '../product.dart';

class DetailProductPage extends StatelessWidget {
  final Product? product;
  const DetailProductPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(product?.nom ?? "Introuvable"),
    );
  }
}
