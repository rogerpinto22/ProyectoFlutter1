import 'package:http/http.dart' as http;
import 'package:app18/functions/CursoDB.dart';
import 'dart:convert';

Future<List<CursoDB>> getAllCursos() async {

  final response = await http.get(Uri.parse('http://192.168.1.73:8080/cursos'));

  if(response.statusCode == 200) {

    var jsonData = jsonDecode(response.body);

    List<CursoDB> cursoArr = [];

    for(var json in jsonData){
      CursoDB cursos = CursoDB(
        sId: json['_id'], 
        titulo: json['titulo'],
        desc: json['desc'],
        linkVideo: json['linkVideo'],
        imgCurso: json['imgCurso'],
      );
      cursoArr.add(cursos);
    }
    return cursoArr;

  } else {
    throw Exception('fallo ${response.statusCode} ');
  }

} 