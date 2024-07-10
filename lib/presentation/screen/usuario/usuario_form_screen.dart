import 'package:flutter/material.dart';

class UsuarioFormScreen extends StatefulWidget {
  static final String routName = "usuarioForm";
  const UsuarioFormScreen({ Key? key }) : super(key: key);

  @override
  _UsuarioFormScreenState createState() => _UsuarioFormScreenState();
}

class _UsuarioFormScreenState extends State<UsuarioFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuário"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cadastro de Usuário"),
          ],
        ),
      ),
    );
  }
}