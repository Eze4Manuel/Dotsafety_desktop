

class Admin{
  String? first_name;
  String? last_name;
  String? email;
  String? username;
  String? user_type;
  String? access_level;
  String? password;

  Admin(
      {
        this.first_name,
        this.last_name,
        this.email,
        this.user_type,
        this.access_level,
        this.username,
        this.password});

  Admin.fromJson(Map<String, String> json) {
    first_name = json['first_name'];
    last_name = json['last_name'];
    email = json['email'];
    user_type = json['userType'];
    access_level = json['accessLevel'];
    username = json['username'];
    password = json['password'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, String>{};
    data['first_name'] = first_name ?? '';
    data['last_name'] = last_name ?? '';
    data['email'] = email ?? '';
    data['userType'] = user_type ?? '';
    data['accessLevel'] = access_level ?? '';
    data['username'] = username ?? '';
    data['password'] = password ?? '';
    return data;
  }
}