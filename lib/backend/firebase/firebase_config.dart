import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAzDsmK6BdQnPZU4n6LOIY92cNDNBatC2E",
            authDomain: "mywaydhaba.firebaseapp.com",
            projectId: "mywaydhaba",
            storageBucket: "mywaydhaba.appspot.com",
            messagingSenderId: "1044695493341",
            appId: "1:1044695493341:web:7ddd0650b4a18466860934",
            measurementId: "G-B71TD06NTT"));
  } else {
    await Firebase.initializeApp();
  }
}
