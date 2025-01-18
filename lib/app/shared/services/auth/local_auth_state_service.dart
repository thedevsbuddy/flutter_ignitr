import 'package:get/get_utils/get_utils.dart';

import '../../../models/api_response.dart';
import '../services.dart';

class LocalAuthStateService extends BaseService implements AuthStateService {
  @override
  String? tableName = 'users';

  @override
  Future<ApiResponse> getUser() async {
    Map<String, dynamic>? _data = await db.first();
    return ApiResponse(data: _data);
  }

  @override
  Future<ApiResponse> logout() async {
    return await 300.milliseconds.delay(() => ApiResponse.success());
  }
}
