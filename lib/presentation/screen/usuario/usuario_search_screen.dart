import 'package:flutter/material.dart';
import 'package:flutter_food_express/presentation/screen/usuario/usuario_form_screen.dart';
import 'package:flutter_food_express/presentation/widgets/search_widget.dart';

class UsuarioSearchScreen extends StatefulWidget {
  static final String routName = "usuarioSearch";

  const UsuarioSearchScreen({ Key? key }) : super(key: key);

  @override
  _UsuarioSearchScreenState createState() => _UsuarioSearchScreenState();
}

class _UsuarioSearchScreenState extends State<UsuarioSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SearchWidget(title: "Usuários", routNameForm: UsuarioFormScreen.routName);
  }
}