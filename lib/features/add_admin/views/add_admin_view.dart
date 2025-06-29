import 'package:ecommerce_supabase_admin/core/components/custom_elevated_button.dart';
import 'package:ecommerce_supabase_admin/core/components/custom_search_field.dart';
import 'package:ecommerce_supabase_admin/core/functions/build_custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddAdminView extends StatefulWidget {
  const AddAdminView({super.key});

  @override
  State<AddAdminView> createState() => _AddAdminViewState();
}

class _AddAdminViewState extends State<AddAdminView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, "Add Admin"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomField(controller: _emailController, labelText: "Email"),
              SizedBox(
                height: 20,
              ),
              CustomField(
                controller: _passwordController,
                labelText: "Password",
                isPassword: true,
              ),
              SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                onPressed: () {},
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
