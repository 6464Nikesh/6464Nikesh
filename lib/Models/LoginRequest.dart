class LoginRequest {
  String? email;
  String? password;

  LoginRequest({
    this.email,
    this.password,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email?.trim(),
      'password': password?.trim(),
    };
    return map;
  }
}
