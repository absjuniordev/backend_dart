import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class CustomServe {
  Future<void> initialize(Handler handler) async {
    String address = 'localhost';
    int port = 8081;

    await shelf_io.serve(handler, address, port);
    print("Servidor inicializado -> http://localhost:$port");
  }
}
