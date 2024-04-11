import 'package:flutter_food_express/data/database_provider.dart';
import 'package:flutter_food_express/domain/models/estado.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class EstadoRepository{

  late DatabaseProvider databaseProvider;

  EstadoRepository(this.databaseProvider);

  Future<int> insert(Estado entity) async{
    await databaseProvider.open();
    Database dt = databaseProvider.database;
    return await dt.insert("estado", entity.toMap());
  }

}