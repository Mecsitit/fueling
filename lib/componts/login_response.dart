import 'dart:convert';

class LoginResponse {
  final bool loginStatus;
  final String userId;
  final String userName;
  final String userRole;

  LoginResponse(this.loginStatus, this.userId, this.userName, this.userRole);

// factory LoginResponse.fromJson <Map<String, dynamic>>(json);
// return

  List<LoginResponse> parseUser(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<LoginResponse>((json) =>LoginResponse.fromJson(json)).toList();
  }

}
