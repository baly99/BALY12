part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoginInitialState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {
  // final UserData userData;

  // LoginSuccessState(this.userData);
}

class LoginErrorState extends AuthState {
  final String error;

  LoginErrorState(this.error);
}
/////////////////////////////////////////////////////////

class RegisterLoadingState extends AuthState {}

class RegisterSuccessState extends AuthState {
  // final RegisterModel userData;
  // RegisterSuccessState(this.userData);
}

class RegisterErrorState extends AuthState {
  final String error;

  RegisterErrorState(this.error);
}

class TechnicalUserSwitchState extends AuthState {}

class PhoneauthLoading extends AuthState {}

class PhoneauthError extends AuthState {
  final String error;

  PhoneauthError(this.error);
}

class PhoneNumberSubmitted extends AuthState {}

class OtpVerfied extends AuthState {}

class EmailauthError extends AuthState {
  final String error;
  EmailauthError(this.error);
}

class EmailSubmitted extends AuthState {}

class LogedInSuccessState extends AuthState {}

class GetBooksSuccessState extends AuthState {}

class GetUserByUidState extends AuthState {
  final UserModel userModel;

  GetUserByUidState(this.userModel);
}