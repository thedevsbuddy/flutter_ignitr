import 'package:flutter/foundation.dart';

import '../../../database/database.dart';
import '../../../helpers/helpers.dart';

class BaseService {
  /// Create a request class instance
  late Request api;
  late Database db;

  @mustCallSuper
  String? tableName;

  /// Instantiate Service
  BaseService() {
    api = Request();
    if (tableName != null) db = Database(tableName!);
    print("Initializing ${tableName} Table File");
  }

  /// Start the server [Request]
  void init(String client) => api.start(client);

  /// Stop the server [Request]
  void close(String client) => api.close(client);
}
