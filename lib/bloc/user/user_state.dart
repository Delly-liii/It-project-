import 'package:training2/model/user_model.dart';

abstract class UserState{
    List<Object?> get props => [];
}

class UserInitialState extends UserState{
}
class UserLoadingState extends UserState{
  @override
  List<Object?> get props => [];
}
class UserLoadedSuccessState extends UserState{
  final List<User> users;

  UserLoadedSuccessState({required this.users});
  @override
  List<Object?> get props => [users];
}
class UserErrorState extends UserState{
  final String message;

  UserErrorState(this.message);
  @override
  List<Object?> get props => [message];
}