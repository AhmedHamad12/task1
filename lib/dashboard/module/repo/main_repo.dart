

import 'package:task/dashboard/module/user_model.dart';

abstract class MainRepo {
  Future<void> insert({required String name, String? address});
  Future<List<UserModel>> fetch();
  Future<void> delete({required int id});
}
