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

PastLaunchesList$Query$LaunchesPast$Rocket
    _$PastLaunchesList$Query$LaunchesPast$RocketFromJson(
        Map<String, dynamic> json) {
  return PastLaunchesList$Query$LaunchesPast$Rocket()
    ..rocket_name = json['rocket_name'] as String;
}

Map<String, dynamic> _$PastLaunchesList$Query$LaunchesPast$RocketToJson(
        PastLaunchesList$Query$LaunchesPast$Rocket instance) =>
    <String, dynamic>{
      'rocket_name': instance.rocket_name,
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
    ..launch_date_utc = json['launch_date_utc'];
}

Map<String, dynamic> _$PastLaunchesList$Query$LaunchesPastToJson(
        PastLaunchesList$Query$LaunchesPast instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mission_name': instance.mission_name,
      'links': instance.links?.toJson(),
      'rocket': instance.rocket?.toJson(),
      'launch_date_utc': instance.launch_date_utc,
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
