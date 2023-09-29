import 'package:classic_messenger/components/components.dart';
import 'package:classic_messenger/firebase_options.dart';
import 'package:classic_messenger/services/locator.dart' as locator;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  locator.initServices();
  await GetIt.I.allReady();
  runApp(const CmApp());
}

class CmApp extends StatelessWidget {
  const CmApp({super.key});

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
