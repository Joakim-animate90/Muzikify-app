import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}
class AuthenticationEvntSuccess extends AuthenticationEvent{
  const AuthenticationEvntSuccess();
  @override
  List<Object?> get props => [];
}
class AuthenticationEvntError extends AuthenticationEvent{
  const AuthenticationEvntError();
  @override
  List<Object?> get props => [];
}
class AuthenticationEvntLoading extends AuthenticationEvent{
  const AuthenticationEvntLoading();
  @override
  List<Object?> get props => [];
}
class AuthenticationEvntInitial extends AuthenticationEvent{
  const AuthenticationEvntInitial();
  @override
  List<Object?> get props => [];
}

class StateAuthenticationLoading extends AuthenticationState{
  const StateAuthenticationLoading();
  @override
  List<Object?> get props => [];
}
class StateAuthenticationSuccess extends AuthenticationState{
  const StateAuthenticationSuccess();
  @override
  List<Object?> get props => [];
}
class StateAuthenticationError extends AuthenticationState{
  const StateAuthenticationError();
  @override
  List<Object?> get props => [];
}
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const StateAuthenticationLoading()){
    on<AuthenticationEvntSuccess>(_onEventSuccess);
    on<AuthenticationEvntError>((event, emit) => emit(const StateAuthenticationError()));
  }

  void _onEventSuccess(
      AuthenticationEvntSuccess event, Emitter<AuthenticationState> emit) async {
    try {
      print("state partition success");
      emit(const StateAuthenticationSuccess());

    } catch (e) {
      print(e);
      emit(const StateAuthenticationError());
    }
  }

}