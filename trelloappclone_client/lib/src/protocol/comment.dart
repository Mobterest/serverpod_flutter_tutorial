/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Comment extends _i1.SerializableEntity {
  Comment({
    this.id,
    required this.cardId,
    required this.userId,
    required this.description,
  });

  factory Comment.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Comment(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      cardId:
          serializationManager.deserialize<int>(jsonSerialization['cardId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int cardId;

  int userId;

  String description;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cardId': cardId,
      'userId': userId,
      'description': description,
    };
  }
}
