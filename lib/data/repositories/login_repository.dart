import '../models/request/login_request.dart';
import '../models/response/login_response.dart';
import 'base_repository.dart';

class LoginRepository extends BaseRepository {
  Future<LoginResponse> login(LoginRequest request) async {
    final res = await get('/api/template/login/1');
    return LoginResponse.fromJson(res.body);
  }
}
