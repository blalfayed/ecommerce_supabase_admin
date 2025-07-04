import 'package:ecommerce_supabase_admin/core/components/custom_search_field.dart';
import 'package:ecommerce_supabase_admin/core/functions/build_custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/components/custom_elevated_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildCustomAppBar(context, "Login As An Admin",
            isBackButton: false),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomField(
                labelText: "Email",
                controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomField(
                labelText: "Password",
                controller: passwordController,
                isPassword: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              )
            ],
          ),
        ));
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
