import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tite_live_shop/cart/cart_page.dart';
import 'package:tite_live_shop/list_product/list_product_page.dart';
import 'package:tite_live_shop/product.dart';

import 'detail/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(initialLocation: '/', routes: [
        GoRoute(
            path: '/',
            builder: (_, __) => const ListProductPage(),
            routes: [
              GoRoute(
                path: 'detail',
                builder: (_, state) =>
                    DetailProductPage(product: state.extra as Product?),
              ),
              GoRoute(
                path: 'cart',
                builder: (_, __) => const CartPage(),
              ),
            ])
      ]),
      //home: const ListProductPage() //const CartPage(),
    );
  }
}
