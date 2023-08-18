import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //sign up user
  Future<String> signUpUser({
    required String phonenumber,
    required String username,
    required String password,
  }) async {
    String result = 'Some error occurred';
    try {
      if (phonenumber.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: phonenumber, password: password);

        _firestore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email': phonenumber,
          'following': [],
          'followers': []
        });
        result = 'success';
      }else {
        result = 'Please enter all the fields';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  Future<String> loginUser({
    required String phonenumber,
    required String password,
  }) async {
    String result = 'Some error occurred';
    try {
      if (phonenumber.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: phonenumber, password: password);
        result = 'success';
      } else {
        result = 'Please enter all the fields';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
