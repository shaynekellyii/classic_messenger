import 'package:classic_messenger/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme),
        inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
              hintStyle: (Theme.of(context).inputDecorationTheme.hintStyle ??
                      const TextStyle())
                  .copyWith(fontStyle: FontStyle.italic),
            ),
      ),
    );
  }
}
