/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Member extends _i1.SerializableEntity {
  Member({
    this.id,
    required this.workspaceId,
    required this.userId,
    required this.name,
    required this.role,
  });

  factory Member.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Member(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      workspaceId: serializationManager
          .deserialize<int>(jsonSerialization['workspaceId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      role: serializationManager.deserialize<String>(jsonSerialization['role']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int workspaceId;

  int userId;

  String name;

  String role;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'name': name,
      'role': role,
    };
  }
}
