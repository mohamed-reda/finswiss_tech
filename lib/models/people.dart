import 'package:finswiss_tech/models/result.dart';
import 'package:json_annotation/json_annotation.dart';
part 'people.g.dart';

//flutter packages pub run build_runner build
@JsonSerializable()
class People {
  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
  Map<String, dynamic> toJson() => _$PeopleToJson(this);
  People({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int count;
  String next;
  dynamic previous;
  List<Result> results;
}
