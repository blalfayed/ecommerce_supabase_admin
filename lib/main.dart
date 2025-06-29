import 'package:ecommerce_supabase_admin/core/my_observer.dart';
import 'package:ecommerce_supabase_admin/features/auth/view/login_view.dart';
import 'package:ecommerce_supabase_admin/features/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;

void main() {
  runApp(const MyApp());
  Bloc.observer = MyObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Market Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}
