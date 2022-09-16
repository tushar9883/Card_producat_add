import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/controller/cart_crontroller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();

  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 75,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              '${controller.total}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      );
    });
  }
}
