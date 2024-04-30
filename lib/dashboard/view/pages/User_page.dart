import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/dashboard/controller/user_cubit.dart';
import 'package:task/dashboard/view/components/user_component.dart';
class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => UserCubit(),
        child: BlocBuilder<UserCubit, UserState>(builder: (context, state) {
          final UserCubit controller = context.read<UserCubit>();
          return Scaffold(
            backgroundColor:  Color(0xFF345069),
            body: state is UserLoading
                ? const CircularProgressIndicator()
                : state is UserEmpty
                    ? const Center(
                        child: Icon(
                       Icons.person,
                        size: 100,
                        color: Colors.grey,
                      ))
                    : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                       
                        itemCount: controller.users.length,
                        itemBuilder: (_, int index) {
                          return UserItemWidget(
                              userModel: controller.users[index]);
                        },
                      ),
          );
        }));
  }
}
