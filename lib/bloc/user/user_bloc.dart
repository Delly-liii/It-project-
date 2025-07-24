import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training2/repositories/user_repository.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(UserInitialState()) {
    on<FetchUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final users = await userRepository.getUsers();
        emit(UserLoadedSuccessState(users: users));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
