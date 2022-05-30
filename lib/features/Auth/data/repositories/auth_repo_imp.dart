import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_market/features/Auth/domain/repositories/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future completeInforamation(
      {required String name,
      required String phoneNumber,
      required String address}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UserCredential>> loginWithFacebook() async {
    try{

      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
      FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential
      return Right(await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential));
    }catch(e){
      return Left(Exception('SomeThing Went Wrong'));
    }
  }

  @override
  Future<Either<Exception, UserCredential>> loginWithGoogle() async {
    try{
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return Right(await FirebaseAuth.instance.signInWithCredential(credential));
    }catch(e){
      return Left(Exception('SomeThing Went Wrong'));
    }

  }
}
