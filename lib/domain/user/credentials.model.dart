import 'dart:convert';

class Credentials {
  final String fullname;
  final String firstName;
  final String lastName;

  /// this is what the user is going to use to sign in with
  final String email;

  /// this is what should be used to get and put data
  final String userId;
  Credentials({
    this.fullname,
    this.firstName,
    this.lastName,
    this.email,
    this.userId,
  });

  Credentials copyWith({
    String fullname,
    String firstName,
    String lastName,
    String email,
    String userId,
  }) {
    return Credentials(
      fullname: fullname ?? this.fullname,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullname': fullname,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'userId': userId,
    };
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Credentials(
      fullname: map['fullname'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      email: map['email'] ?? '',
      userId: map['userId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Credentials.fromJson(String source) => Credentials.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Credentials(fullname: $fullname, firstName: $firstName, lastName: $lastName, email: $email, userId: $userId)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Credentials && o.fullname == fullname && o.firstName == firstName && o.lastName == lastName && o.email == email && o.userId == userId;
  }

  @override
  int get hashCode {
    return fullname.hashCode ^ firstName.hashCode ^ lastName.hashCode ^ email.hashCode ^ userId.hashCode;
  }
}
