import 'package:flutter/material.dart';

import 'login_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Integration Testing',
    theme: ThemeData(useMaterial3: true),
    home: const LoginScreen(),
  ));
}
