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
    this.gender = Gender.N_A,
    required this.homeworld,
    this.films = const [],
    this.species = const [],
    this.vehicles = const [],
    this.starships = const [],
    // this.created,
    // this.edited,
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
  // DateTime? created;
  // DateTime? edited;
  String url;
}

enum Gender {
  N_A,
  male,
  female,
}
//import 'package:json_annotation/json_annotation.dart';
// part 'result.g.dart';
//
// //flutter packages pub run build_runner build
// @JsonSerializable()
// class Result {
//   factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
//   Map<String, dynamic> toJson() => _$ResultToJson(this);
//   Result({
//     this.name = '',
//     this.height = '',
//     this.mass = '',
//     this.hairColor = '',
//     this.skinColor = '',
//     this.eyeColor = '',
//     this.birthYear = '',
//     this.gender = Gender.N_A,
//     this.homeworld = '',
//     this.films = const [],
//     this.species = const [],
//     this.vehicles = const [],
//     this.starships = const [],
//     // this.created,
//     // this.edited,
//     this.url = '',
//   });
//
//   String name;
//   String height;
//   String mass;
//   String hairColor;
//   String skinColor;
//   String eyeColor;
//   String birthYear;
//   Gender gender;
//   String homeworld;
//   List<String> films;
//   List<String> species;
//   List<String> vehicles;
//   List<String> starships;
//   // DateTime? created;
//   // DateTime? edited;
//   String url;
// }
//
// enum Gender {
//   N_A,
//   male,
//   female,
// }
