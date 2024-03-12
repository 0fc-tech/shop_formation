import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Scaffold => Squelette d'une page MaterialDesign
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            "Panier",
          )),
      body: Consumer<CartModel>(
        builder: (context, cartModel, oldChild) {
          return cartModel.listProducts.isEmpty ? EmptyCart() : Placeholder();
        },
      ),
    );
  }
}

class EmptyCart extends StatelessWidget {
  const EmptyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      //mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Votre Panier total est de"),
              Text(
                "0.00€",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Votre panier est actuellement vide"),
              Icon(Icons.image),
            ],
          ),
        )
      ],
    );
  }
}
