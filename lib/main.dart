import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/src/data/providers/providers.dart';
import 'package:star_green_app/src/data/services/locator.dart';
import 'package:star_green_app/src/config/styles/theme.dart';
import 'src/config/routes/auto_router_stargreen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => AuthProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      theme: myTheme,
    );
  }
}
