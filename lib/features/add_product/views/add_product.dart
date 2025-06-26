import 'package:ecommerce_supabase_admin/core/components/cache_image.dart';
import 'package:ecommerce_supabase_admin/core/components/custom_elevated_button.dart';
import 'package:ecommerce_supabase_admin/core/components/custom_search_field.dart';
import 'package:ecommerce_supabase_admin/core/functions/build_custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddProductView extends StatefulWidget {
  const AddProductView({super.key});

  @override
  State<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends State<AddProductView> {
  String selectedValue = "الأعشاب";
  String sale = "10";
  final TextEditingController _producrNameController = TextEditingController();
  final TextEditingController _newPriceController = TextEditingController();
  final TextEditingController _oldPriceController = TextEditingController();
  final TextEditingController _productDescriptionController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, "Add Product"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownMenu(
                  onSelected: (String? value) {
                    setState(() {
                      selectedValue = value ?? "الأعشاب";
                    });
                  },
                  initialSelection: selectedValue,
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: "الأعشاب", label: "الأعشاب"),
                    DropdownMenuEntry(value: "التوابل", label: "التوابل")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text("sale"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("${sale} %")
                  ],
                ),
                Column(
                  children: [
                    const CacheImage(
                      url:
                          "https://sharkiatoday.com/wp-content/uploads/2016/08/htqg-5-jhfg-hpvwd-ugd-ih-td-lfp.jpg",
                      width: 300,
                      height: 300,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CustomElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.image),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomElevatedButton(
                            onPressed: () {},
                            child: const Icon(Icons.upload_file_rounded))
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            CustomField(
              labelText: "product Name",
              controller: _producrNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomField(
              labelText: "New Price",
              controller: _newPriceController,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomField(
              labelText: "Old Price",
              controller: _oldPriceController,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomField(
              labelText: "product Description",
              controller: _productDescriptionController,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CustomElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text("Add"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _producrNameController.dispose();
    _newPriceController.dispose();
    _oldPriceController.dispose();
    _productDescriptionController.dispose();
    super.dispose();
  }
}
