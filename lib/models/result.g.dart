// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    name: json['name'] == null || json['name'] == 'none'
        ? 'unknown'
        : json['name'].toString(),
    height: json['height'] == null || json['height'] == 'none'
        ? 'unknown'
        : json['height'].toString(),
    mass: json['mass'] == null || json['mass'] == 'none'
        ? 'unknown'
        : json['mass'].toString(),
    hairColor: json['hair_color'] == null || json['hair_color'] == 'none'
        ? 'unknown'
        : json['hair_color'].toString(),
    skinColor: json['skin_color'] == null || json['skin_color'] == 'none'
        ? 'unknown'
        : json['skin_color'].toString(),
    eyeColor: json['eye_color'] == null || json['eye_color'] == 'none'
        ? 'unknown'
        : json['eye_color'].toString(),
    birthYear: json['birth_year'] == null || json['birth_year'] == 'none'
        ? 'unknown'
        : json['birth_year'].toString(),
    gender: $enumDecode(_$GenderEnumMap, json['gender']),
    homeworld: json['homeworld'] == null || json['homeworld'] == 'none'
        ? 'unknown'
        : json['homeworld'].toString(),
    films: (json['films'] as List<dynamic>).map((e) => e as String).toList(),
    species:
        (json['species'] as List<dynamic>).map((e) => e as String).toList(),
    vehicles:
        (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
    starships:
        (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
    // created: DateTime.parse(json['created'] .toString() ),
    // edited: DateTime.parse(json['edited'] .toString() ),
    url: json['url'] == null || json['url'] == 'none'
        ? 'unknown'
        : json['url'].toString(),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hairColor': instance.hairColor,
      'skinColor': instance.skinColor,
      'eyeColor': instance.eyeColor,
      'birthYear': instance.birthYear,
      'gender': _$GenderEnumMap[instance.gender],
      'homeworld': instance.homeworld,
      'films': instance.films,
      'species': instance.species,
      'vehicles': instance.vehicles,
      'starships': instance.starships,
      // 'created': instance.created.toIso8601String(),
      // 'edited': instance.edited.toIso8601String(),
      'url': instance.url,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.N_A: 'n/a',
  // Gender.N_A: 'n/a',
};
