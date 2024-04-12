
import 'package:flutter/material.dart';

class EstadoSearchScreen extends StatefulWidget {
  
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
    );
  }
}