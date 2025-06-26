import 'package:ecommerce_supabase_admin/core/functions/navigate_to.dart';
import 'package:ecommerce_supabase_admin/features/products/view/edit_product.dart';
import 'package:flutter/material.dart';

import 'cache_image.dart';
import 'custom_elevated_button.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CacheImage(
                width: 200,
                height: 150,
                url:
                    "https://sharkiatoday.com/wp-content/uploads/2016/08/htqg-5-jhfg-hpvwd-ugd-ih-td-lfp.jpg"),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const Text(
                  "Product Name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Product Discription",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomElevatedButton(
                    onPressed: () =>
                        navigateTo(context, const EditProductView()),
                    child: const Icon(Icons.edit))
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const Text(
                  "Product Price",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Product Sale",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.comment))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomElevatedButton(
                  onPressed: () {},
                  child: const Row(
                      children: [Icon(Icons.delete), Text('Delete')])),
            )
          ],
        ),
      ),
    );
  }
}
