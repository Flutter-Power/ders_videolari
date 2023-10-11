import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube1/202/package_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          // Bütün ekranlar bu şekilde gelicek , hepsinde tek tek yazmicam
          tabBarTheme: const TabBarTheme(
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Color.fromARGB(255, 133, 32, 25),
            unselectedLabelColor: Color.fromARGB(255, 240, 145, 177),
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Color.fromARGB(255, 231, 220, 220)),
          listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
          textSelectionTheme: const TextSelectionThemeData(selectionColor: Colors.cyan, cursorColor: Colors.amber, selectionHandleColor: Colors.yellow),
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(),
            fillColor: Color.fromARGB(60, 212, 36, 36),
            filled: true,
            iconColor: Colors.red,
            labelStyle: TextStyle(color: Colors.red),
            floatingLabelStyle: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.w500),
          ),
          appBarTheme: const AppBarTheme(
            // Bütün ekranlarda appbarlar bu şekilde gelicek , hepsinde tek tek yazmicam
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0, // üstteki satırla beraber appbar yokmuş gibi ekranı sıfır yaptı
            systemOverlayStyle: SystemUiOverlayStyle.light, // saatlerin olduğu kısım
          ),
        ),
        home: const PackageLearnView());
  }
}
