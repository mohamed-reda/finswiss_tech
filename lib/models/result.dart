import 'package:json_annotation/json_annotation.dart';
part 'result.g.dart';

//flutter packages pub run build_runner build
@JsonSerializable()
class Result {
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
  Result({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  Gender gender;
  String homeworld;
  List<String> films;
  List<String> species;
  List<String> vehicles;
  List<String> starships;
  DateTime created;
  DateTime edited;
  String url;
}

enum Gender { MALE, N_A, FEMALE }
