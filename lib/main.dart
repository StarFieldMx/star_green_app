import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/form_login_provider.dart';
import 'package:star_green_app/providers/providers.dart';
import 'package:star_green_app/styles/theme.dart';

import 'routes/auto_router_stargreen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          // UxAuthServices
          ChangeNotifierProvider(
            create: (_) => FormSignInProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => UxAuthProvider(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      routerConfig: _appRouter.config(),
      theme: myTheme,
    );
  }
}
