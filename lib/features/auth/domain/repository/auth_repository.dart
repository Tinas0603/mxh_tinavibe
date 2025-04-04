/*
Auth Repository - Liệt kê và phác thảo các thao tác xác thực(authentication) 
có thể có.
*/

import 'package:flutter_firebase_mxh_tinavibe/features/auth/domain/entities/app_user.dart';

abstract class AuthRepository {
  Future<AppUser?> loginWithEmailPassword(String email, String password);
  Future<AppUser?> registerWithEmailPassword(
      String name, String email, String password);
  Future<void> logout();
  Future<AppUser?> getCurrentUser();
  Future<AppUser?> signInWithGoogle();
}
