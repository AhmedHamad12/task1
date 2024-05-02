import 'package:flutter/material.dart';

import 'package:task/dashboard/module/repo/local_db_data.dart';
import 'package:task/dashboard/module/user_model.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late List<UserModel> _users = [];

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    final repo = await DatabaseRepo.instance;
    final users = await repo.fetch();
    setState(() {
      _users = users;
    });
  }

  Future<void> _removeUser(String userName) async {
    final repo = await DatabaseRepo.instance;
    final existingUser = _users.firstWhere((user) => user.name == userName,
        orElse: () => UserModel(id: -1));
    if (existingUser.id != -1) {
      await repo.delete(id: existingUser.id!);
      _loadUsers();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('User $userName has been deleted')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('User $userName not found')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: _users.isEmpty
          ? Center(
              child: Text('No users found'),
            )
          : ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                final user = _users[index];
                return ListTile(
                  title: Text(user.name!),
                  subtitle: Text(user.address ?? ''),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _removeUser(user.name!);
                    },
                  ),
                );
              },
            ),
    );
  }
}
