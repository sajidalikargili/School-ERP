import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_erp/presentation/provider/theme_provider.dart';
import 'package:school_erp/utils/app_router.dart';
import 'package:school_erp/utils/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final themeProvider = context.watch<ThemeProvider>();
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'School ERP',
          routerConfig: AppNavigator.router,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.themeMode,
        );
      },
    );
  }
}
