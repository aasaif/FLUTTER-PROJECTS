// To parse this JSON data, do
//
//     final apiPractice = apiPracticeFromJson(jsonString);

import 'dart:convert';

List<ApiPractice> apiPracticeFromJson(String str) => List<ApiPractice>.from(
    json.decode(str).map((x) => ApiPractice.fromJson(x)));

String apiPracticeToJson(List<ApiPractice> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiPractice {
  ApiPractice({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory ApiPractice.fromJson(Map<String, dynamic> json) => ApiPractice(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
