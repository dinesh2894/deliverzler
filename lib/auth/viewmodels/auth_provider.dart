// import 'package:flutter/cupertino.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import 'auth_state.dart';
// import '';
//
// final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
//   return AuthNotifier(ref);
// });
//
// class AuthNotifier extends StateNotifier<AuthState> {
//   AuthNotifier(this.ref) : super(const AuthState.available()) {}
//
//   final Ref ref;
//   late AuthRepo _authRepo;
//
//   signINWithEmailAndPassword(
//     BuildContext context, {
//     required String email,
//     required String password,
//   }) {
//     state = const AuthState.loading();
//     final _result = await _authRepo.
//   }
// }
