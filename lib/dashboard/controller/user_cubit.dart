import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/dashboard/module/repo/local_db_data.dart';
import 'package:task/dashboard/module/user_model.dart';



part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserLoading()) {
    init();
  }

  List<UserModel> users = [];
  Future<void> init() async {
    emit(UserLoading());
    users = await (await DatabaseRepo.instance).fetch();

    if (users.isEmpty) {
      emit(UserEmpty());
    } else {
      emit(UserLoaded());
    }
  }
}
