import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes/routes.dart';
import 'routes/routes_generator.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      ),
      onGenerateRoute: AppRoutesGenerator.generateRoute,
      initialRoute: AppRoutes.home,
    );
  }
}
