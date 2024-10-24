import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/data/models.dart';
import 'src/ui/screens.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;

  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(['google_fonts'],
        await rootBundle.loadString('assets/fonts/Lexend/OFL.txt'));
  });

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(const [
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pragma Flutter Basic App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(1, 100, 40, 205),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.lexendTextTheme(),
      ),
      home: const JobsScreen(),
      routes: {
        jobsScreenPath: (_) => const JobsScreen(),
        detailsScreenPath: (context) =>
            DetailsScreen(ModalRoute.of(context)!.settings.arguments as Job),
        formScreenPath: (context) =>
            FormScreen(job: ModalRoute.of(context)!.settings.arguments as Job?),
      },
    );
  }
}
