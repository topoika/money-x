class User {
  int? id;
  String? name;
  String? email;
  String? username;
  String? image;
  String? deviceToken;
  User({
    this.id,
    this.name,
    this.email,
    this.username,
    this.image,
    this.deviceToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'image': image,
      'deviceToken': deviceToken,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      deviceToken:
          map['deviceToken'] != null ? map['deviceToken'] as String : null,
    );
  }
}
