import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:tokio_test/firebase_options.dart';
import 'package:tokio_test/screens/login/login_screen.dart';
import 'package:tokio_test/screens/main_screen.dart';
import 'package:tokio_test/screens/web_view/web_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tokio Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const LoginSreen(),
      onGenerateRoute: _onGenerateRoute,
    );
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/dashboard':
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );

      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginSreen(),
        );

      case '/web_view':
        return MaterialPageRoute(
          builder: (context) => WebViewPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const LoginSreen(),
        );
    }
  }
}