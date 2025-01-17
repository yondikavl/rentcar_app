import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rentcar_app/firebase_options.dart';
import 'package:rentcar_app/presentation/view/maps_details_screen.dart';
import 'package:rentcar_app/presentation/view/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentCar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MapsDetailsScreen(),
    );
  }
}
