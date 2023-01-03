import 'dart:convert';
import 'package:api_practice/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ApiPractice> apiPractice = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: apiPractice.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 110,
                    color: Colors.amberAccent,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User id: ${apiPractice[index].userId}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          'ID: ${apiPractice[index].id}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Title: ${apiPractice[index].title}',
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Body: ${apiPractice[index].body}',
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<List<ApiPractice>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        apiPractice.add(ApiPractice.fromJson(index));
      }
      return apiPractice;
    } else {
      return apiPractice;
    }
  }
}
