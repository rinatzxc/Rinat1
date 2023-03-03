import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ap/model/cart_model.dart';
import 'pages/intro_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context) => CartModel(),
    child: const MaterialApp(debugShowCheckedModeBanner: false,
    home: IntroPage(),),);
  }
}

