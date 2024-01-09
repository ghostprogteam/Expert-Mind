import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'core/shared/color.dart';
import 'view/screen/layout_home/layout_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: ProjectColors.whiteColor10),
        primarySwatch: createMaterialColor(ProjectColors.mainColor),
        fontFamily: 'Tajawal',
      ),

      // home: ChatInboxScreen(),
      initialRoute: '/LayoutHome',
      getPages: [GetPage(name: '/LayoutHome', page: () => LayoutHome())],

      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AL"),
    );
  }
}
