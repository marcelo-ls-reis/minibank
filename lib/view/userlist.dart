import 'package:flutter/material.dart';
import 'package:minibank/components/user_title.dart';
import 'package:minibank/routes/app_routes.dart';
import 'package:provider/provider.dart';
import '../provider/users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: <Widget> [
          IconButton (
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.userForm
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTitle(users.byIndex(i)),
        ),
    );
  }
}
