// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) {
  final List<Result> l = [];
  for (dynamic r in json['results']) {
    l.add(Result.fromJson(r));
  }
  return People(
    count: json['count'] as int,
    next: json['next'] as String,
    previous: json['previous'],
    results: l,
  );
}

Map<String, dynamic> _$PeopleToJson(People instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
