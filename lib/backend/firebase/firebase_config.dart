import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDfmYs42m45HPoe5e3UzH8FfTlF4sT7jEw",
            authDomain: "fenixbox-ccfb1.firebaseapp.com",
            projectId: "fenixbox-ccfb1",
            storageBucket: "fenixbox-ccfb1.appspot.com",
            messagingSenderId: "857675165794",
            appId: "1:857675165794:web:e29bfe273cd8a3a19b213b",
            measurementId: "G-9BBC1X3VC2"));
  } else {
    await Firebase.initializeApp();
  }
}
