import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/form_provider.dart';
import 'package:star_green_app/routes/router_stargreen.dart';
import 'package:star_green_app/styles/theme.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => FormProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: StarGreenRoutes.initialRoute(),
      routes: StarGreenRoutes.mapRoutes(),
      theme: myTheme,
    );
  }
}
