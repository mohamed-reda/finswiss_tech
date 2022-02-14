// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      name: json['name'] as String,
      height: json['height'] as String,
      mass: json['mass'] as String,
      hairColor: json['hairColor'] as String,
      skinColor: json['skinColor'] as String,
      eyeColor: json['eyeColor'] as String,
      birthYear: json['birthYear'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      homeworld: json['homeworld'] as String,
      films: (json['films'] as List<dynamic>).map((e) => e as String).toList(),
      species:
          (json['species'] as List<dynamic>).map((e) => e as String).toList(),
      vehicles:
          (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
      starships:
          (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
      created: DateTime.parse(json['created'] as String),
      edited: DateTime.parse(json['edited'] as String),
      url: json['url'] as String,
    );

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
      'created': instance.created.toIso8601String(),
      'edited': instance.edited.toIso8601String(),
      'url': instance.url,
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.N_A: 'N_A',
  Gender.FEMALE: 'FEMALE',
};
