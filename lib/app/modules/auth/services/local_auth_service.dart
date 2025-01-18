import 'package:get/get.dart';

import '../../../../data/auth_data.dart';
import '../../../../data/users_data.dart';
import '../../../models/api_response.dart';
import '../../../models/user_model.dart';
import '../../../shared/shared.dart';
import 'auth_service.dart';

class LocalAuthService extends BaseService implements AuthService {
  @override
  String? tableName = 'users';

  @override
  Future<ApiResponse> login(
      {required String client, required Map<String, dynamic> body}) async {
    return await 300.milliseconds.delay(() {
      bool userNotFound = UsersData.users.where((user) {
        String? identifier = body['identifier'].contains('@')
            ? user.email
            : (RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)'))
                    .hasMatch(body['identifier'])
                ? user.phone
                : user.username;
        return body['identifier'] == identifier &&
            body['password'] == user.password;
      }).isEmpty;

      if (userNotFound) {
        return AuthData.loginError;
      }

      return AuthData.loginSuccess;
    });
  }

  @override
  Future<ApiResponse> register(
      {required String client, required Map<String, dynamic> body}) async {
    UsersData.users.add(UserModel.fromJson(body).copyWith(
      id: UsersData.users.last.id! + 1,
      avatar: "https://random.imagecdn.app/500/500",
    ));
    return await 300.milliseconds.delay(() => AuthData.registerSuccess);
  }

  @override
  Future<ApiResponse> verifyOtp(
      {required String client, required Map<String, dynamic> body}) async {
    return await 300.milliseconds.delay(() => AuthData.loginSuccess);
  }
}
