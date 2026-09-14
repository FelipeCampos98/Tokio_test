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
        final String url =
            settings.arguments as String? ??
            'https://www.tokiomarine.com.br/seguros-vida/seguro-vida/?utm_source=google&utm_medium=cpc&utm_campaign=crho-tkm-gg-vida_individual-pmax-perfor-conv-aon&utm_content=interesse-vida_marcio_2025-vida_marcio_2025&gad_source=1&gad_campaignid=22438016383&gbraid=0AAAAADnO_8vZruZBBNhZ1Zb0rgRt6yFjd&gclid=CjwKCAjwtp7VBhBjEiwAJfpV-wwcnrhog7rxdHVuGM4bVStCZAoybRKS7fdjXK6_qos1stjAxhkjsxoC73EQAvD_BwE';

        return MaterialPageRoute(
          builder: (context) => WebViewPage(
            url: url,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const LoginSreen(),
        );
    }
  }
}