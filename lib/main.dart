import 'package:flutter/material.dart';
import 'view/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
