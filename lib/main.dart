import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDpPbL1s0a0FbHhI2ZGS0tU68GFKwGAhvM",
          authDomain: "crud-24c35.firebaseapp.com",
          projectId: "crud-24c35",
          storageBucket: "crud-24c35.appspot.com",
          messagingSenderId: "502968582984",
          appId: "1:502968582984:web:d287e6641ce367b246297d"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
          
        ),
     
      ),
    );
  }
}
