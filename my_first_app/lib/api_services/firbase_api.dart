import 'package:firebase_auth/firebase_auth.dart';

class FirebaseApi {
  FirebaseApi._();
  static FirebaseApi instance = FirebaseApi._();

  Future<User?> signUp(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(credential.user);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      print(e.code);
    } catch (e) {
      print(e);
    }
    return null;
  }


   Future<User?> Login(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(credential.user);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      print(e.code);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
