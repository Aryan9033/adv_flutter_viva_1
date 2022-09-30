import 'dart:convert';

import 'package:flutter/material.dart';

class Jokes {
  final String created_at;
//  final NetworkImage icon_url;
  final String id;
  final String updated_at;
  final String value;

  Jokes(
      {required this.created_at,
      //   required this.icon_url,
      required this.id,
      required this.updated_at,
      required this.value});

  factory Jokes.formJSON({required Map<String, dynamic> json}) {
    return Jokes(
      created_at: json['created_at'],
      //  icon_url: json['icon_url'],
      id: json['id'],
      updated_at: json['updated_at'],
      value: json['value'],
    );
  }
}
