import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../product.dart';
import 'list_product.dart';

final List<Product> listProducts = [
  Product(
    nom: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
    description:
        "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    categorie: "men's clothing",
    prix: 10995,
  ),
  Product(
    nom: "Mens Casual Premium Slim Fit T-Shirts",
    description:
        "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
    image:
        "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    categorie: "men's clothing",
    prix: 2230,
  ),
  Product(
    nom: "Mens Cotton Jacket",
    description:
        "Great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.",
    image: "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    categorie: "men's clothing",
    prix: 5599,
  ),
  Product(
    nom: "Mens Casual Slim Fit",
    description:
        "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
    image: "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
    categorie: "men's clothing",
    prix: 1599,
  ),
  Product(
    nom:
        "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
    description:
        "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
    image: "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    categorie: "jewelery",
    prix: 69500,
  ),
];

class ListProductPage extends StatelessWidget {
  const ListProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Liste produits"),
        actions: [
          IconButton(
              onPressed: () {
                context.go("/cart");
              },
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: ListViewProduct(
        listProducts: listProducts,
      ),
    );
  }
}
