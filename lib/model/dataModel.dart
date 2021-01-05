import 'dart:convert';

Age ageFromJson(String str) => Age.fromJson(json.decode(str));

String ageToJson(Age data) => json.encode(data.toJson());

class Age {
  Age({
    this.name,
    this.age,
    this.count,
  });

  String name;
  int age;
  int count;

  factory Age.fromJson(Map<String, dynamic> json) => Age(
        name: json["name"],
        age: json["age"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "count": count,
      };
}
