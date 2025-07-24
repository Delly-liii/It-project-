import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training2/bloc/user/user_bloc.dart' show UserBloc;
import 'package:training2/bloc/user/user_event.dart';
import 'package:training2/bloc/user/user_state.dart'
    show
        UserState,
        UserInitialState,
        UserLoadingState,
        UserLoadedSuccessState,
        UserErrorState;
import 'package:training2/model/user_model.dart';
import 'package:training2/widgets/user_card.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserInitialState) {
            context.read<UserBloc>().add(FetchUserEvent());
            return const Center(child: CircularProgressIndicator());
          }
          if (state is UserLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is UserLoadedSuccessState) {
            final List<User> users = state.users;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.75,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return UserCard(user: user);
              },
            );
            // return ListView.builder(
            //   itemCount: users.length,
            //   itemBuilder: (context, index) {
            //     final user = users[index];
            //     return UserCard(user: user,);
            //   },
            // );
          }
          if (state is UserErrorState) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return const Center(child: Text('No users found.'));
        },
      ),
    );
  }
}
