import 'package:ecommerce_supabase_admin/core/components/custom_circle_pro_ind.dart';
import 'package:ecommerce_supabase_admin/core/components/custom_elevated_button.dart';
import 'package:ecommerce_supabase_admin/core/components/custom_search_field.dart';
import 'package:ecommerce_supabase_admin/core/functions/build_custom_app_bar.dart';
import 'package:ecommerce_supabase_admin/core/functions/navigate_without_back.dart';
import 'package:ecommerce_supabase_admin/core/functions/show_msg.dart';
import 'package:ecommerce_supabase_admin/features/add_admin/cubit/cubit/add_admin_cubit.dart';
import 'package:ecommerce_supabase_admin/features/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocProvider(
        create: (context) => AddAdminCubit(),
        child: BlocConsumer<AddAdminCubit, AddAdminState>(
          listener: (context, state) {
            if (state is AddAdminSuccess) {
              navigateWithoutBack(context, LoginView());
            }
            if (state is AddAdminError) {
              showMsg(context, state.msgError);
            }
          },
          builder: (context, state) {
            AddAdminCubit cubit = context.read<AddAdminCubit>();
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: state is AddAdminLoading
                  ? CustomCircleProgIndicator()
                  : Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          CustomField(
                              controller: _emailController, labelText: "Email"),
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
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                cubit.createAnAdmin({
                                  "email": _emailController.text,
                                  "password": _passwordController.text
                                });
                              }
                            },
                            child: Text("Add"),
                          ),
                        ],
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
