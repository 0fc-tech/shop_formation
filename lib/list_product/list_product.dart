import 'package:flutter/material.dart';
import 'package:tite_live_shop/product.dart';

class ListViewProduct extends StatelessWidget {
  final List<Product> listProducts;
  const ListViewProduct({
    super.key,
    required this.listProducts,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                //Passer sur la page détail
                // avec le produit en paramètre
              },
              contentPadding: const EdgeInsets.all(8),
              leading: Image.network(listProducts[index].image),
              title: Text(listProducts[index].nom),
              subtitle: Text(listProducts[index].getPrice(),
                  style: Theme.of(context).textTheme.titleMedium),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("AJOUTER"),
              ),
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: listProducts.length);
  }
}
