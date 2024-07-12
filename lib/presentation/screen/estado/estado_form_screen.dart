import 'package:flutter/material.dart';

class EstadoFormScreen extends StatefulWidget {

  /* Definindo o nome da rota para Janela. Definimos o atributo
  como static para que possamos utilizar o nome da rota sem precisar
  criar a instância da classe. */
  static const String routName = "estadoForm";

  const EstadoFormScreen({ Key? key }) : super(key: key);

  @override
  _EstadoFormScreenState createState() => _EstadoFormScreenState();
}

class _EstadoFormScreenState extends State<EstadoFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:(){}, icon: const Icon(Icons.check)),
          IconButton(onPressed:(){ Navigator.pop(context); } , icon: const Icon(Icons.cancel))
        ],
        title: const Text('Cadastro Estado'),
      ),
      body: _body(context),
    );
  }

Widget _body(BuildContext context) {
  
  return Padding(padding: EdgeInsets.all(16),
  // Para organizar os componentes verticalmente
    child: Column(children: [
      Row(children: [
        Flexible(child: TextFormField(),)
      ]),
      const SizedBox(height: 16,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Flexible(child: TextFormField()),
        const SizedBox(width: 16),
        Flexible(child: TextFormField()),
      ],)
    ]),
  );

}
  


}