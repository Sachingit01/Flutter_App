import 'package:flutter/material.dart';
import 'project1/home.dart';
import 'project1/add.dart';
import 'project1/update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "child",
      routes: {
        '/': (context) => const HomePage(),
        '/add': (context) => const AddUser(),
        '/update': (context) => const UpdateDonor(),
      },
      initialRoute: '/',
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
