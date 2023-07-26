/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Listboard extends _i1.SerializableEntity {
  Listboard({
    this.id,
    required this.boardId,
    required this.userId,
    required this.name,
    this.archived,
    this.cards,
  });

  factory Listboard.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Listboard(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      boardId:
          serializationManager.deserialize<int>(jsonSerialization['boardId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      archived: serializationManager
          .deserialize<bool?>(jsonSerialization['archived']),
      cards: serializationManager
          .deserialize<List<_i2.Cardlist>?>(jsonSerialization['cards']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int boardId;

  int userId;

  String name;

  bool? archived;

  List<_i2.Cardlist>? cards;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'boardId': boardId,
      'userId': userId,
      'name': name,
      'archived': archived,
      'cards': cards,
    };
  }
}
