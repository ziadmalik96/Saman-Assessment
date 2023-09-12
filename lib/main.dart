import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:saman_erp/views/order_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saman App',
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ur", "PK"),
      ],
      locale: const Locale("ur", "PK"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorDark: const Color(0xff002500),
        primaryColor: const Color(0xff114B1F),
        shadowColor: const Color(0xff6AFB92),
        cardColor: const Color(0xff66FF00),
        hoverColor: const Color(0xff1A535C),
        focusColor: Colors.white,
        useMaterial3: true,
      ),
      home: const OrderView(),
    );
  }
}
