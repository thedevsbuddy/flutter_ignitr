const String stub = """
import '../../../models/ApiResponse.dart';
import '../../../helpers/Request.dart';
import '{MODULE}Service.dart';

class App{MODULE}Service implements {MODULE}Service {
  late Request _request;
  App{MODULE}Service() {
    _request = new Request();
  }

  /// Start the server request
  @override
  void init(String client) => _request.start(client);

  /// Stop the server request
  @override
  void close(String client) => _request.close(client);
  
  @override
  Future<ApiResponse> doSomething() async {
    throw UnimplementedError();
  }
}
""";
