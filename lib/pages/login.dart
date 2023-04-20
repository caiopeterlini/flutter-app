import 'package:aula_auth_flutter/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late String _username;
  late String _password;

  void _signIn() {
   // if (_username == '' && _password == '') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage())
      );
 //   } else {
   //   ScaffoldMessenger.of(context).showSnackBar(
     //   const SnackBar(content: Text('Login/Senha inválido(a)!'))
    //  );
   // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acesso')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                label: Text('Login:')
              ),
              onChanged: (value) => setState(() => _username = value),
            ),
            TextFormField(
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                label: Text('Senha:')
              ),
              onChanged: (value) => setState(() => _password = value),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _signIn,
                  icon: const Icon(Icons.login),
                  label: const Text('Entrar'),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}