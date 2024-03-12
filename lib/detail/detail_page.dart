import 'package:flutter/material.dart';

import '../product.dart';

class DetailProductPage extends StatefulWidget {
  final Product? product;
  const DetailProductPage({required this.product, super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  //Ajouter un bouton "Ajouter au panier" et lorsque le produit été ajouté,
  //Changer le bouton par un "retirer du panier"
  //Ajouter au panier : FilledButton
  //Retirer du panier OutlinedButton
  var isAdded = false;
  //setState((){//Ici modifier une variable susceptible de faire changer l'UI})
  @override
  Widget build(BuildContext context) {
    print("Hello je rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Column(
        children: [
          Hero(
            tag: widget.product.hashCode,
            child: Image.network(
              widget.product?.image ?? "",
              height: 300,
            ),
          ),
          Text(widget.product?.nom ?? "Introuvable"),
          isAdded
              ? OutlinedButton.icon(
                  onPressed: () {
                    setState(() => isAdded = false);
                  },
                  icon: const Icon(Icons.remove_shopping_cart),
                  label: const Text("Retirer du panier"))
              : FilledButton.icon(
                  icon: const Icon(Icons.add_shopping_cart),
                  label: const Text("Ajouter au panier"),
                  onPressed: () {
                    setState(() => isAdded = true);
                  },
                )
        ],
      ),
    );
  }
}
