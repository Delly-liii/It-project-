import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training2/bloc/user/user_bloc.dart';
import 'package:training2/repositories/user_repository.dart';
import 'package:training2/screens/login_screen.dart';
import 'package:training2/screens/user_list_screen.dart';
import 'package:training2/service/api_services.dart';

void main() {
  final UserRepository userRepository = UserRepository(ApiServices());
  runApp(MyApp(userRepository: userRepository));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp({super.key, required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User List App',
      home: BlocProvider(
        create: (_) => UserBloc(userRepository),
        child: UserListScreen(),
      ),
    );
  }
}
