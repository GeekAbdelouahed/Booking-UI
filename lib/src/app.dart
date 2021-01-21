import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes/routes.dart';
import 'routes/routes_generator.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Booking',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        onGenerateRoute: AppRoutesGenerator.generateRoute,
        initialRoute: AppRoutes.home,
      );
}
