import 'package:flutter/material.dart';
import 'package:pro_example/provider/count_provider.dart';
import 'package:pro_example/provider/fav_provider.dart';
import 'package:pro_example/screen/color/color_slider.dart';
// import 'package:pro_example/screen/fav/fav_screen.dart';
import 'package:provider/provider.dart';
import 'provider/color_provider.dart';
import 'screen/count/count_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) =>FavouriteItemProvider(),),
      ChangeNotifierProvider(create: (_) => CountProvider()),
      ChangeNotifierProvider(create: (_) => ColorProvider()), 

    ],
    child:const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ColorSlider(),
    )
    );
  }
}
