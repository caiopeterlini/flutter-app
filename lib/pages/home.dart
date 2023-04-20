import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'add_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
        actions: [
           IconButton(
            icon: const Icon(Icons.add),
            padding: EdgeInsets.only(right: 30.0),
            tooltip: 'Add User',
             onPressed: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) => const AddUser()
            ))
           ),
        ],
      )
    );
  }
}