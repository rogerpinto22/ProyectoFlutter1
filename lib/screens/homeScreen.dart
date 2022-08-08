import 'package:app18/functions/CursoDB.dart';
import 'package:app18/functions/getCursos.dart';
import 'package:app18/screens/components/cursoItem.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static Route<dynamic> route(String mensaje) {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(mensaje: mensaje),
    );
  }

  final String mensaje;

  const HomeScreen({Key key, @required this.mensaje}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mensaje),
        toolbarHeight: 90,
        elevation: 14,
        backgroundColor: Colors.blue.shade700,   
      ),
      /////////////////////CURSOS///////////////////////////
      body: FutureBuilder<List<CursoDB>>(
        future: getAllCursos(),
        builder: (context, snapshot){
          if(snapshot.data == null){
            return Center(child: CircularProgressIndicator());
          } else if(snapshot.hasError){
            return Center(child: Text('Hubo un error en la conexion'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, i){
                return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: cursoItem(snapshot.data[i].titulo, snapshot.data[i].desc, context),
                );
              },
            );
          }
        },
      )
    );
  }
}
