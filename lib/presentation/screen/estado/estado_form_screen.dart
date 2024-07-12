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
// Pega estado do formulário (salvar, validar, resetar os dados associados ao Widget Form)
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  // final para ter apenas uma instância do global key do formulário
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:(){
            // O primeiro ! serve para negar as condições dos validators do formulário
            // O segundo ! é utilizado para acessar classes que podem conter valores nulos
            if (!_formState.currentState!.validate()){  
              // Aqui construímos a janela de diálogo
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: const Text("Aviso!"),
                  content: const Text("Preencha os campos obrigatórios!"),
                  actions: [TextButton(onPressed:(){Navigator.pop(context);} , child: const Text("Ok"))]
                );

              } );
            }else{

            }
          }, icon: const Icon(Icons.check)),
          IconButton(onPressed:(){ Navigator.pop(context); } , icon: const Icon(Icons.cancel))
        ],
        title: const Text('Cadastro Estado'),
      ),
      body: _body(context),
    );
  }

Widget _body(BuildContext context) {
  
  return Padding(padding: EdgeInsets.all(16),
    child:Form(
      key: _formState, 
      child: Column(children: [
      Row(children: [
        Flexible(child: TextFormField(
          decoration: InputDecoration(label: Text("Nome")),
          validator: (value) {
            // Verificando se o campo é diferente de nulo e se retirei todos os espaços e está vazio
            if (value != null && value.trim().isEmpty){
              return "Campo obrigatório!";
            }
          },
        ),)
      ]),
      const SizedBox(height: 16,),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Flexible(child: TextFormField()),
        const SizedBox(width: 16),
        Flexible(child: TextFormField()),
      ],)
    ]),
    ) 
  );
  }

}