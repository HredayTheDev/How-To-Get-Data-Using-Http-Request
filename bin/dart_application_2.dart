import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

import 'dart:async';
import 'dart:convert';

// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  var data = await (fetchData());
  print(data);
}

// Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('http://192.168.0.121:9010/api/getdocnurserlist'));
// }

Future<List>fetchData() async {
  final response = await http
      .get(Uri.parse('http://192.168.0.121:9010/api/getdocnurserlist'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed To Get The Data');
  }
}
