import 'package:flutter/material.dart';
import '../config/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reddit Clone',
          style: AppTextStyle.font14black700,
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
