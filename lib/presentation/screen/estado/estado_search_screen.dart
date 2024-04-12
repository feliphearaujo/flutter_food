
import 'package:flutter/material.dart';
import 'package:flutter_food_express/presentation/screen/estado/estado_form_screen.dart';

/// Janela responsável por realizar a pesquisa dos
/// estados e também possuí um botão para chamar a janela
/// de cadastro dos estados.
class EstadoSearchScreen extends StatefulWidget {
  
  /* Definindo o nome da rota para Janela. Definimos o atributo
  como static para que possamos utilizar o nome da rota sem precisar
  criar a instância da classe. */
  static const String routName = "estado";

  const EstadoSearchScreen({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EstadoSearchScreenState();
}

class _EstadoSearchScreenState extends State<EstadoSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: const Text('Estado'),        
      ),
      body: Container(), 
      floatingActionButton: 
          FloatingActionButton(child: const Icon(Icons.add),
          onPressed: () async{
              await Navigator.pushNamed(context,
                          EstadoFormScreen.routName);
          },),     
    );
  }
}