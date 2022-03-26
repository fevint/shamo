class UserModel {
  int id;
  String name;
  String username;
  String email;
  String password;
  String profilePhotoUrl;
  String token;
  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.profilePhotoUrl,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
    Map<String, dynamic> toJson() {
      return {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        'password': password,
        'profile_photo_url': profilePhotoUrl,
        'token': token,
      };
    }
  }
}
