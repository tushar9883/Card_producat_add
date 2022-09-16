import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/controller/cart_crontroller.dart';
import 'package:website/model/producat_model.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: Product.product.length,
        itemBuilder: (BuildContext context, int index) {
          return CatalogProducatCard(index: index);
        },
      ),
    );
  }
}

class CatalogProducatCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  CatalogProducatCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(Product.product[index].imageUrl),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(Product.product[index].name),
          ),
          Expanded(
            child: Text('${Product.product[index].price}'),
          ),
          IconButton(
            onPressed: () {
              cartController.addProduct(Product.product[index]);
            },
            icon: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    );
  }
}
