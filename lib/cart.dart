import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/cart_screen.dart';
import 'package:website/widget/catalog_product.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CatalogScreen(),
            ElevatedButton(
              onPressed: () => Get.to(
                () => const CartScreen(),
              ),
              child: const Text('Add To Card'),
            )
          ],
        ),
      ),
    );
  }
}
