import 'package:shelf/shelf.dart';
import 'api/blog_api.dart';
import 'api/login_api.dart';
import 'infra/custom_serve.dart';

void main() async {
  var cascedeHandler =
      Cascade().add(LoginApi().handler).add(BlogApi().handler).handler;

  var handler =
      Pipeline().addMiddleware(logRequests()).addHandler(cascedeHandler);

  await CustomServe().initialize(handler);
}
