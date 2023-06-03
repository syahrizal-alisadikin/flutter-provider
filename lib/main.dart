import 'package:flutter/material.dart';
import 'provider_weight.dart';
import 'provider_height.dart';
import 'home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderWeight()),
        ChangeNotifierProvider(create: (context) => ProviderHeight()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
    // return ChangeNotifierProvider<ProviderWeight>(
    //   create: (context) => ProviderWeight(),
    //   child: ChangeNotifierProvider<ProviderHeight>(
    //     create: (context) => ProviderHeight(),
    //     child: MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       home: HomePage(),
    //     ),
    //   ),
    // );
  }
}
