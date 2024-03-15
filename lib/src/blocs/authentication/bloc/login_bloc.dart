import 'package:bloc/bloc.dart';
import 'package:e_commerce_bloc/src/data/repositaary/auth_repositary.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepositary repositary;
  LoginBloc(this.repositary) : super(LoginInitial()) {
    on<RequestGoogleLogin>((event, emit) async {
      //funtion for google login
      try {
        emit(LoginLoading());
        final user = await repositary.signInWithGoogle();
        debugPrint("User: ${user?.displayName}");

        emit(LoginSucess());
      } catch (e) {
        debugPrint(e.toString());
        emit(LoginFailed(e.toString()));
      }
      // TODO: implement event handler
    });
  }
}
