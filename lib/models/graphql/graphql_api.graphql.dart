// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query$LaunchesPast$Links with EquatableMixin {
  PastLaunchesList$Query$LaunchesPast$Links();

  factory PastLaunchesList$Query$LaunchesPast$Links.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunchesList$Query$LaunchesPast$LinksFromJson(json);

  List<String> flickr_images;

  String mission_patch_small;

  @override
  List<Object> get props => [flickr_images, mission_patch_small];
  Map<String, dynamic> toJson() =>
      _$PastLaunchesList$Query$LaunchesPast$LinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass
    with EquatableMixin {
  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass();

  factory PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$MassFromJson(json);

  int kg;

  @override
  List<Object> get props => [kg];
  Map<String, dynamic> toJson() =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$MassToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines
    with EquatableMixin {
  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines();

  factory PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$EnginesFromJson(json);

  int number;

  @override
  List<Object> get props => [number];
  Map<String, dynamic> toJson() =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$EnginesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height
    with EquatableMixin {
  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height();

  factory PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$HeightFromJson(json);

  double meters;

  @override
  List<Object> get props => [meters];
  Map<String, dynamic> toJson() =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$HeightToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query$LaunchesPast$Rocket$Rocket with EquatableMixin {
  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket();

  factory PastLaunchesList$Query$LaunchesPast$Rocket$Rocket.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$RocketFromJson(json);

  int cost_per_launch;

  String country;

  String description;

  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Mass mass;

  String type;

  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Engines engines;

  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket$Height height;

  int boosters;

  @override
  List<Object> get props => [
        cost_per_launch,
        country,
        description,
        mass,
        type,
        engines,
        height,
        boosters
      ];
  Map<String, dynamic> toJson() =>
      _$PastLaunchesList$Query$LaunchesPast$Rocket$RocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query$LaunchesPast$Rocket with EquatableMixin {
  PastLaunchesList$Query$LaunchesPast$Rocket();

  factory PastLaunchesList$Query$LaunchesPast$Rocket.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunchesList$Query$LaunchesPast$RocketFromJson(json);

  String rocket_name;

  String rocket_type;

  PastLaunchesList$Query$LaunchesPast$Rocket$Rocket rocket;

  @override
  List<Object> get props => [rocket_name, rocket_type, rocket];
  Map<String, dynamic> toJson() =>
      _$PastLaunchesList$Query$LaunchesPast$RocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query$LaunchesPast with EquatableMixin {
  PastLaunchesList$Query$LaunchesPast();

  factory PastLaunchesList$Query$LaunchesPast.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunchesList$Query$LaunchesPastFromJson(json);

  String id;

  String mission_name;

  PastLaunchesList$Query$LaunchesPast$Links links;

  PastLaunchesList$Query$LaunchesPast$Rocket rocket;

  int launch_date_unix;

  String details;

  bool launch_success;

  @override
  List<Object> get props => [
        id,
        mission_name,
        links,
        rocket,
        launch_date_unix,
        details,
        launch_success
      ];
  Map<String, dynamic> toJson() =>
      _$PastLaunchesList$Query$LaunchesPastToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesList$Query with EquatableMixin {
  PastLaunchesList$Query();

  factory PastLaunchesList$Query.fromJson(Map<String, dynamic> json) =>
      _$PastLaunchesList$QueryFromJson(json);

  List<PastLaunchesList$Query$LaunchesPast> launchesPast;

  @override
  List<Object> get props => [launchesPast];
  Map<String, dynamic> toJson() => _$PastLaunchesList$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunchesListArguments extends JsonSerializable with EquatableMixin {
  PastLaunchesListArguments({@required this.limit});

  factory PastLaunchesListArguments.fromJson(Map<String, dynamic> json) =>
      _$PastLaunchesListArgumentsFromJson(json);

  final int limit;

  @override
  List<Object> get props => [limit];
  Map<String, dynamic> toJson() => _$PastLaunchesListArgumentsToJson(this);
}

class PastLaunchesListQuery
    extends GraphQLQuery<PastLaunchesList$Query, PastLaunchesListArguments> {
  PastLaunchesListQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'pastLaunchesList'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'limit')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'launchesPast'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: VariableNode(name: NameNode(value: 'limit')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'mission_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'links'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'flickr_images'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'mission_patch_small'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'rocket'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'rocket_name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'rocket_type'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'rocket'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'cost_per_launch'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'country'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'description'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'mass'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'kg'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'type'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'engines'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'number'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'height'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'meters'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'boosters'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ])),
                FieldNode(
                    name: NameNode(value: 'launch_date_unix'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'details'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'launch_success'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'pastLaunchesList';

  @override
  final PastLaunchesListArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PastLaunchesList$Query parse(Map<String, dynamic> json) =>
      PastLaunchesList$Query.fromJson(json);
}
