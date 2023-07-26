/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Board extends _i1.SerializableEntity {
  Board({
    this.id,
    required this.workspaceId,
    required this.userId,
    required this.name,
    this.description,
    required this.visibility,
    required this.background,
    this.starred,
    this.enableCover,
    this.watch,
    this.availableOffline,
    this.label,
    this.emailAddress,
    this.commenting,
    this.memberType,
    this.pinned,
    this.selfJoin,
    this.close,
  });

  factory Board.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Board(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      workspaceId: serializationManager
          .deserialize<int>(jsonSerialization['workspaceId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      visibility: serializationManager
          .deserialize<String>(jsonSerialization['visibility']),
      background: serializationManager
          .deserialize<String>(jsonSerialization['background']),
      starred:
          serializationManager.deserialize<bool?>(jsonSerialization['starred']),
      enableCover: serializationManager
          .deserialize<bool?>(jsonSerialization['enableCover']),
      watch:
          serializationManager.deserialize<bool?>(jsonSerialization['watch']),
      availableOffline: serializationManager
          .deserialize<bool?>(jsonSerialization['availableOffline']),
      label:
          serializationManager.deserialize<String?>(jsonSerialization['label']),
      emailAddress: serializationManager
          .deserialize<String?>(jsonSerialization['emailAddress']),
      commenting: serializationManager
          .deserialize<int?>(jsonSerialization['commenting']),
      memberType: serializationManager
          .deserialize<int?>(jsonSerialization['memberType']),
      pinned:
          serializationManager.deserialize<bool?>(jsonSerialization['pinned']),
      selfJoin: serializationManager
          .deserialize<bool?>(jsonSerialization['selfJoin']),
      close:
          serializationManager.deserialize<bool?>(jsonSerialization['close']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int workspaceId;

  int userId;

  String name;

  String? description;

  String visibility;

  String background;

  bool? starred;

  bool? enableCover;

  bool? watch;

  bool? availableOffline;

  String? label;

  String? emailAddress;

  int? commenting;

  int? memberType;

  bool? pinned;

  bool? selfJoin;

  bool? close;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'description': description,
      'visibility': visibility,
      'background': background,
      'starred': starred,
      'enableCover': enableCover,
      'watch': watch,
      'availableOffline': availableOffline,
      'label': label,
      'emailAddress': emailAddress,
      'commenting': commenting,
      'memberType': memberType,
      'pinned': pinned,
      'selfJoin': selfJoin,
      'close': close,
    };
  }
}
