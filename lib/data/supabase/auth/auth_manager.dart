import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zakio_core/data/supabase/supabase_manager.dart';

abstract class AuthManager {
  static StreamSubscription<AuthState>? authSubscription;
  static Future<bool> signInWithOtp(String email, Function() onLogin) async {
    try {
      await SupabaseManager.supabase.auth.signInWithOtp(
        email: email,
        emailRedirectTo: "io.supabase.flutterquickstart://login-callback/",
      );

      // listen when user click on email link
      authSubscription = SupabaseManager.supabase.auth.onAuthStateChange.listen(
        (event) {
          if (event.session != null) {
            onLogin.call();
            authSubscription?.cancel();
          }
        },
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
