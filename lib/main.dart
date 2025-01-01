import 'package:flutter/material.dart';
import 'package:pro_example/provider/count_provider.dart';
import 'package:pro_example/provider/fav_provider.dart';
// import 'package:pro_example/screen/color/color_slider.dart';
// import 'package:pro_example/screen/fav/fav_screen.dart';
import 'package:provider/provider.dart';
import 'provider/color_provider.dart';
// import 'screen/count/count_example.dart';
import 'provider/theme_provider.dart';
import 'screen/theme/theme.dart';

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
      ChangeNotifierProvider(create: (_) => ThemeProvider()),  

    ],
    child: Builder(builder: (BuildContext context){
      final themechanger = Provider.of<ThemeProvider>(context);
      return MaterialApp(
      themeMode: themechanger.themeMode,
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple),  // change the color of app bar
        primarySwatch: Colors.red,
        primaryColor: Colors.deepPurple,) ,
        darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepOrange,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.orangeAccent),
        
      ),
      home:const ThemeScreen(),
    );
    }
    )
    );
  }
}
