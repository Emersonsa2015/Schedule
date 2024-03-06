import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCkqxhkKVHGomn5tLZbfs84Aga-MqFT0uk",
            authDomain: "schedule-da0ad.firebaseapp.com",
            projectId: "schedule-da0ad",
            storageBucket: "schedule-da0ad.appspot.com",
            messagingSenderId: "241042401372",
            appId: "1:241042401372:web:f6d05f060db3f706b09e99"));
  } else {
    await Firebase.initializeApp();
  }
}
