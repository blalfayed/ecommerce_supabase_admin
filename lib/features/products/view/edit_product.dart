import 'package:ecommerce_supabase_admin/core/components/cache_image.dart';
import 'package:ecommerce_supabase_admin/core/functions/build_custom_app_bar.dart';
import 'package:flutter/material.dart';

class EditProductView extends StatelessWidget {
  const EditProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, "Edit Product"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("sale"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("10 %")
                  ],
                ),
                CacheImage(
                  url:
                      "https://sharkiatoday.com/wp-content/uploads/2016/08/htqg-5-jhfg-hpvwd-ugd-ih-td-lfp.jpg",
                  width: 300,
                  height: 300,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
