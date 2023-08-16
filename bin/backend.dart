import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'server.dart';

void main() async {
  var _server = ServeHandler();

  final server = await shelf_io.serve(_server.handler, "0.0.0.0", 8080);
  print('O Site subiu -> http://localhost:8080 ');
}
