// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PastLaunchesList$Query$LaunchesPast$Links
    _$PastLaunchesList$Query$LaunchesPast$LinksFromJson(
        Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast$Links()
    ..flickr_images =
        (json['flickr_images'] as List)?.map((e) => e as String)?.toList()
    ..mission_patch_small = json['mission_patch_small'] as String;
}

Map<String, dynamic> _$PastLaunchesList$Query$LaunchesPast$LinksToJson(
        PastLaunchesList$Query$LaunchesPast$Links instance) =>
    <String, dynamic>{
      'flickr_images': instance.flickr_images,
      'mission_patch_small': instance.mission_patch_small,
    };

PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass
    _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$MassFromJson(
        Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass()
    ..kg = json['kg'] as int;
}

Map<String, dynamic>
    _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$MassToJson(
            PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass instance) =>
        <String, dynamic>{
          'kg': instance.kg,
        };

PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines
    _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$EnginesFromJson(
        Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines()
    ..number = json['number'] as int;
}

Map<String,
    dynamic> _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$EnginesToJson(
        PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines instance) =>
    <String, dynamic>{
      'number': instance.number,
    };

PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height
    _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$HeightFromJson(
        Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height()
    ..meters = (json['meters'] as num)?.toDouble();
}

Map<String,
    dynamic> _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$HeightToJson(
        PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height instance) =>
    <String, dynamic>{
      'meters': instance.meters,
    };

PastLaunchesList$Query$LaunchesPast$Rocket$Rocket
    _$PastLaunchesList$Query$LaunchesPast$Rocket$RocketFromJson(
        Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast$Rocket$Rocket()
    ..cost_per_launch = json['cost_per_launch'] as int
    ..country = json['country'] as String
    ..description = json['description'] as String
    ..mass = json['mass'] == null
        ? null
        : PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass.fromJson(
            json['mass'] as Map<String, dynamic>)
    ..type = json['type'] as String
    ..engines = json['engines'] == null
        ? null
        : PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines.fromJson(
            json['engines'] as Map<String, dynamic>)
    ..height = json['height'] == null
        ? null
        : PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height.fromJson(
            json['height'] as Map<String, dynamic>)
    ..boosters = json['boosters'] as int;
}

Map<String, dynamic> _$PastLaunchesList$Query$LaunchesPast$Rocket$RocketToJson(
        PastLaunchesList$Query$LaunchesPast$Rocket$Rocket instance) =>
    <String, dynamic>{
      'cost_per_launch': instance.cost_per_launch,
      'country': instance.country,
      'description': instance.description,
      'mass': instance.mass?.toJson(),
      'type': instance.type,
      'engines': instance.engines?.toJson(),
      'height': instance.height?.toJson(),
      'boosters': instance.boosters,
    };

PastLaunchesList$Query$LaunchesPast$Rocket
    _$PastLaunchesList$Query$LaunchesPast$RocketFromJson(
        Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast$Rocket()
    ..rocket_name = json['rocket_name'] as String
    ..rocket_type = json['rocket_type'] as String
    ..rocket = json['rocket'] == null
        ? null
        : PastLaunchesList$Query$LaunchesPast$Rocket$Rocket.fromJson(
            json['rocket'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PastLaunchesList$Query$LaunchesPast$RocketToJson(
        PastLaunchesList$Query$LaunchesPast$Rocket instance) =>
    <String, dynamic>{
      'rocket_name': instance.rocket_name,
      'rocket_type': instance.rocket_type,
      'rocket': instance.rocket?.toJson(),
    };

PastLaunchesList$Query$LaunchesPast
    _$PastLaunchesList$Query$LaunchesPastFromJson(Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast()
    ..id = json['id'] as String
    ..mission_name = json['mission_name'] as String
    ..links = json['links'] == null
        ? null
        : PastLaunchesList$Query$LaunchesPast$Links.fromJson(
            json['links'] as Map<String, dynamic>)
    ..rocket = json['rocket'] == null
        ? null
        : PastLaunchesList$Query$LaunchesPast$Rocket.fromJson(
            json['rocket'] as Map<String, dynamic>)
    ..launch_date_unix = json['launch_date_unix']
    ..details = json['details'] as String
    ..launch_success = json['launch_success'] as bool;
}

Map<String, dynamic> _$PastLaunchesList$Query$LaunchesPastToJson(
        PastLaunchesList$Query$LaunchesPast instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mission_name': instance.mission_name,
      'links': instance.links?.toJson(),
      'rocket': instance.rocket?.toJson(),
      'launch_date_unix': instance.launch_date_unix,
      'details': instance.details,
      'launch_success': instance.launch_success,
    };

PastLaunchesList$Query _$PastLaunchesList$QueryFromJson(
    Map<String, dynamic> json) {
  return PastLaunchesList$Query()
    ..launchesPast = (json['launchesPast'] as List)
        ?.map((e) => e == null
            ? null
            : PastLaunchesList$Query$LaunchesPast.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PastLaunchesList$QueryToJson(
        PastLaunchesList$Query instance) =>
    <String, dynamic>{
      'launchesPast': instance.launchesPast?.map((e) => e?.toJson())?.toList(),
    };

PastLaunchesListArguments _$PastLaunchesListArgumentsFromJson(
    Map<String, dynamic> json) {
  return PastLaunchesListArguments(
    limit: json['limit'] as int,
  );
}

Map<String, dynamic> _$PastLaunchesListArgumentsToJson(
        PastLaunchesListArguments instance) =>
    <String, dynamic>{
      'limit': instance.limit,
    };
