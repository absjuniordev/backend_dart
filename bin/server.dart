import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServeHandler {
  Handler get handler {
    final router = Router();
    //Mime Type
    router.get(
      '/',
      (Request request) => Response.ok(
        '<h1> Primeira rota !</h1>',
        headers: {'Content-Type': 'text/html; charset=utf'},
      ),
    );

    router.get('/ola/mundo/<usuario>', (Request request, String usuario) {
      return Response.ok('Olá mundo $usuario!');
    });

    //trabalhan do com query Parameters
    router.get('/query', (Request req) {
      String? nome = req.url.queryParameters['nome'];
      String? idade = req.url.queryParameters['idade'];
      return Response.ok('Query é: $nome, idade: $idade');
    });

    //trafego seguro 'post'
    //com capitura do site
    router.post('/login', (Request req) async {
      var result = await req.readAsString();
      Map json = jsonDecode(result);

      var usuario = json['email'];
      var senha = json['senha'];

      if (usuario == 'abs@hotmail' && senha == '1234') {
        Map result = {"token": "token_1234", "user_id": 1};
        String jsonResponse = jsonEncode(result);

        return Response.ok(
          jsonResponse,
          headers: {
            'Content-Type': 'application/json; charset=utf-8',
          },
        );
      } else {
        return Response.forbidden('Login não realizado');
      }
    });
    return router;
  }
}
