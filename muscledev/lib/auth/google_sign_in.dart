import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class googleSignIn {
  static Future<User?> signInWithGoogle() async {
    try {
      // Trigger the Google Sign-In flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Check if the sign-in was successful
      if (googleUser == null) {
        print('Google sign-in aborted by user.');
        return null; // User canceled the sign-in
      }

      // Obtain the authentication details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential for Firebase authentication
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the generated credential
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;

      // Retrieve user details
      if (user != null) {
        print('User Details:');
        print('Display Name: ${user.displayName}');
        print('Email: ${user.email}');
        print('Photo URL: ${user.photoURL}');
        print('UID: ${user.uid}');
        print('Email Verified: ${user.emailVerified}');
        print('Phone Number: ${user.phoneNumber}');
        SaveDataToFirestore._saveUserToFirestore(user);
      } else {
        print('Error: User is null.');
      }

      return user; // Return the User object for further use
    } catch (e) {
      print('Google sign-in failed: $e');
      return null;
    }
  }
}

class SaveDataToFirestore {
  // Save or update the user in Firestore
  static Future<void> _saveUserToFirestore(User user) async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    final userRef = _firestore.collection('users').doc(user.uid);

    // Check if the user already exists
    DocumentSnapshot userDoc = await userRef.get();

    if (userDoc.exists) {
      // User already exists, update the details
      await userRef.update({
        'displayName': user.displayName,
        'email': user.email,
        'photoURL': user.photoURL,
        'lastSignInTime': user.metadata.lastSignInTime,
      });
    } else {
      // New user, create a new document
      await userRef.set({
        'uid': user.uid,
        'displayName': user.displayName,
        'email': user.email,
        'photoURL': user.photoURL,
        'createdAt': FieldValue.serverTimestamp(),
        'lastSignInTime': user.metadata.lastSignInTime,
      });
    }
  }
}
