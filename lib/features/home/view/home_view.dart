import 'package:ecommerce_supabase_admin/core/components/custom_elevated_button.dart';
import 'package:ecommerce_supabase_admin/core/functions/build_custom_app_bar.dart';
import 'package:ecommerce_supabase_admin/core/functions/navigate_to.dart';
import 'package:ecommerce_supabase_admin/features/add_admin/views/add_admin_view.dart';
import 'package:ecommerce_supabase_admin/features/add_product/views/add_product.dart';
import 'package:ecommerce_supabase_admin/features/products/view/products_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, "home", isBackButton: false),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomElevatedButton(
                width: MediaQuery.of(context).size.width * .3,
                height: MediaQuery.of(context).size.height * .3,
                onPressed: () => navigateTo(context, const ProductsView()),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "products",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.shopping_bag,
                      size: 30,
                    )
                  ],
                )),
            CustomElevatedButton(
              width: MediaQuery.of(context).size.width * .3,
              height: MediaQuery.of(context).size.height * .3,
              onPressed: () => navigateTo(context, AddProductView()),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Products",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(Icons.add_circle_outline)
                ],
              ),
            ),
            CustomElevatedButton(
              width: MediaQuery.of(context).size.width * .3,
              height: MediaQuery.of(context).size.height * .3,
              onPressed: () => navigateTo(context, AddAdminView()),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add An Admin",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(Icons.person_add)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
