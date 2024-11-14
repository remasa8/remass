import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/provider/loginprovider.dart';
import 'package:shop_project/provider/prodctprovider.dart';
import 'package:shop_project/provider/signupprovider.dart';
import 'package:shop_project/screen/product.dart';
import 'package:shop_project/screen/signup.dart';


//oooooooo
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>signupprovider()),
        ChangeNotifierProvider(create: (context)=>loginprovider()),
        ChangeNotifierProvider(create: (context)=>productprovider()),
      ],
      child: MaterialApp(
        home: prodctscreen(),
      ),
    );
  }
}




