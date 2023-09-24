import 'package:dartz/dartz.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}