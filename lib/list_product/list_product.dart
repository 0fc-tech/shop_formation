import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:tite_live_shop/cart/cart_model.dart';
import 'package:tite_live_shop/product.dart';

class ListViewProduct extends StatelessWidget {
  final List<Product> listProducts;
  const ListViewProduct({
    super.key,
    required this.listProducts,
  });

  @override
  Widget build(BuildContext context) {
    http.get(Uri.parse("https://fakestoreapi.com/products")).then(
        (value) => print("FakeStoreApi Response : ${value.body}"),
        onError: (error) => print("Erreur lors de l'appel API : $error"));
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                //Passer sur la page détail
                // avec le produit en paramètre
                context.go("/detail", extra: listProducts[index]);
              },
              contentPadding: const EdgeInsets.all(8),
              leading: Hero(
                  tag: listProducts[index].hashCode,
                  child: Image.network(listProducts[index].image)),
              title: Text(listProducts[index].nom),
              subtitle: Text(listProducts[index].getPrice(),
                  style: Theme.of(context).textTheme.titleMedium),
              trailing: TextButton(
                onPressed: () {
                  context.read<CartModel>().add(listProducts[index]);
                },
                child: const Text("AJOUTER"),
              ),
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: listProducts.length);
  }
}
