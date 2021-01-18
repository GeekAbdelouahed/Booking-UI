import 'package:flutter/material.dart';

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
        ),
        onGenerateRoute: AppRoutesGenerator.generateRoute,
        initialRoute: AppRoutes.home,
      );
}
